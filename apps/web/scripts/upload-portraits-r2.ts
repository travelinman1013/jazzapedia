#!/usr/bin/env tsx

import { execSync } from 'child_process';
import { readdirSync, statSync } from 'fs';
import { join } from 'path';

const PORTRAITS_DIR = process.env.PORTRAITS_DIR || './portraits';
const BUCKET_NAME = 'jazzapedia-portraits';
const R2_PREFIX = 'portraits/';
const IMAGE_EXTENSIONS = ['.jpg', '.jpeg', '.png', '.webp'];

interface UploadStats {
  total: number;
  skipped: number;
  success: number;
  failure: number;
  errors: Array<{ file: string; error: string }>;
}

function getExistingR2Files(): Set<string> {
  console.log('Fetching existing files from R2...');
  const existing = new Set<string>();

  const accountId = process.env.CLOUDFLARE_ACCOUNT_ID;
  const apiToken = process.env.CLOUDFLARE_API_TOKEN;

  if (!accountId || !apiToken) {
    console.log('Missing CLOUDFLARE_ACCOUNT_ID or CLOUDFLARE_API_TOKEN, will upload all files\n');
    return existing;
  }

  try {
    let cursor: string | undefined;

    // Paginate through all objects
    do {
      const cursorParam = cursor ? `&cursor=${cursor}` : '';
      const result = execSync(
        `curl -s "https://api.cloudflare.com/client/v4/accounts/${accountId}/r2/buckets/${BUCKET_NAME}/objects?prefix=${R2_PREFIX}&per_page=1000${cursorParam}" -H "Authorization: Bearer ${apiToken}"`,
        { stdio: 'pipe', maxBuffer: 50 * 1024 * 1024 }
      ).toString();

      const data = JSON.parse(result);

      if (data.success && data.result) {
        for (const obj of data.result) {
          if (obj.key) {
            const filename = obj.key.replace(R2_PREFIX, '');
            existing.add(filename);
          }
        }
        cursor = data.result_info?.cursor;
      } else {
        console.log('API error:', data.errors?.[0]?.message || 'Unknown error');
        break;
      }
    } while (cursor);

    console.log(`Found ${existing.size} existing files in R2\n`);
  } catch (error) {
    console.log('Could not list R2 objects, will upload all files\n');
  }

  return existing;
}

function getImageFiles(dir: string): string[] {
  const files: string[] = [];

  try {
    const entries = readdirSync(dir);

    for (const entry of entries) {
      const fullPath = join(dir, entry);
      const stat = statSync(fullPath);

      if (stat.isFile()) {
        const ext = entry.substring(entry.lastIndexOf('.')).toLowerCase();
        if (IMAGE_EXTENSIONS.includes(ext)) {
          files.push(fullPath);
        }
      }
    }
  } catch (error) {
    console.error(`Error reading directory: ${error}`);
    throw error;
  }

  return files;
}

function uploadToR2(filePath: string, filename: string): boolean {
  const r2Key = `${R2_PREFIX}${filename}`;
  const command = `npx wrangler r2 object put ${BUCKET_NAME}/${r2Key} --file="${filePath}" --remote`;

  try {
    execSync(command, { stdio: 'pipe' });
    return true;
  } catch (error) {
    return false;
  }
}

async function main() {
  console.log('Starting portrait upload to R2...\n');
  console.log(`Source directory: ${PORTRAITS_DIR}`);
  console.log(`Bucket: ${BUCKET_NAME}`);
  console.log(`Prefix: ${R2_PREFIX}\n`);

  // Find all image files
  console.log('Scanning for image files...');
  const imageFiles = getImageFiles(PORTRAITS_DIR);
  console.log(`Found ${imageFiles.length} image files\n`);

  if (imageFiles.length === 0) {
    console.log('No image files found. Exiting.');
    return;
  }

  // Get existing files in R2 to avoid re-uploading
  const existingFiles = getExistingR2Files();

  // Filter to only new files
  const filesToUpload = imageFiles.filter(filePath => {
    const filename = filePath.substring(filePath.lastIndexOf('/') + 1);
    return !existingFiles.has(filename);
  });

  console.log(`Files to upload: ${filesToUpload.length} (skipping ${imageFiles.length - filesToUpload.length} existing)\n`);

  if (filesToUpload.length === 0) {
    console.log('All portraits already uploaded. Nothing to do.');
    return;
  }

  // Upload files
  const stats: UploadStats = {
    total: imageFiles.length,
    skipped: imageFiles.length - filesToUpload.length,
    success: 0,
    failure: 0,
    errors: []
  };

  console.log('Starting upload...\n');

  for (let i = 0; i < filesToUpload.length; i++) {
    const filePath = filesToUpload[i];
    const filename = filePath.substring(filePath.lastIndexOf('/') + 1);

    const success = uploadToR2(filePath, filename);

    if (success) {
      stats.success++;
    } else {
      stats.failure++;
      stats.errors.push({
        file: filename,
        error: 'Upload command failed'
      });
    }

    // Show progress every 50 files (or every file if small batch)
    if ((i + 1) % 50 === 0 || filesToUpload.length < 50) {
      const progress = ((i + 1) / filesToUpload.length * 100).toFixed(1);
      console.log(`Progress: ${i + 1}/${filesToUpload.length} (${progress}%) - Success: ${stats.success}, Failures: ${stats.failure}`);
    }
  }

  // Final report
  console.log('\n' + '='.repeat(60));
  console.log('UPLOAD COMPLETE');
  console.log('='.repeat(60));
  console.log(`Total files:     ${stats.total}`);
  console.log(`Already in R2:   ${stats.skipped}`);
  console.log(`Uploaded:        ${stats.success}`);
  console.log(`Failed:          ${stats.failure}`);

  if (stats.errors.length > 0) {
    console.log('\nFailed uploads:');
    stats.errors.slice(0, 10).forEach(({ file, error }) => {
      console.log(`  - ${file}: ${error}`);
    });

    if (stats.errors.length > 10) {
      console.log(`  ... and ${stats.errors.length - 10} more`);
    }
  }

  // Determine overall status
  if (stats.failure === 0) {
    console.log('\nStatus: SUCCESS');
  } else if (stats.success > 0) {
    console.log('\nStatus: PARTIAL');
  } else {
    console.log('\nStatus: FAILURE');
  }
}

main().catch((error) => {
  console.error('Fatal error:', error);
  process.exit(1);
});
