#!/usr/bin/env tsx

import { execSync } from 'child_process';
import { readdirSync, statSync } from 'fs';
import { join } from 'path';

const PORTRAITS_DIR = process.env.PORTRAITS_DIR || '/Users/maxwell/LETSGO/MaxVault/03_Resources/source_material/ArtistPortraits';
const BUCKET_NAME = 'jazzapedia-portraits';
const R2_PREFIX = 'portraits/';
const IMAGE_EXTENSIONS = ['.jpg', '.jpeg', '.png', '.webp'];

interface UploadStats {
  total: number;
  success: number;
  failure: number;
  errors: Array<{ file: string; error: string }>;
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

  // Upload files
  const stats: UploadStats = {
    total: imageFiles.length,
    success: 0,
    failure: 0,
    errors: []
  };

  console.log('Starting upload...\n');

  for (let i = 0; i < imageFiles.length; i++) {
    const filePath = imageFiles[i];
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

    // Show progress every 100 files
    if ((i + 1) % 100 === 0) {
      const progress = ((i + 1) / imageFiles.length * 100).toFixed(1);
      console.log(`Progress: ${i + 1}/${imageFiles.length} (${progress}%) - Success: ${stats.success}, Failures: ${stats.failure}`);
    }
  }

  // Final report
  console.log('\n' + '='.repeat(60));
  console.log('UPLOAD COMPLETE');
  console.log('='.repeat(60));
  console.log(`Total files:     ${stats.total}`);
  console.log(`Successful:      ${stats.success}`);
  console.log(`Failed:          ${stats.failure}`);
  console.log(`Success rate:    ${((stats.success / stats.total) * 100).toFixed(2)}%`);

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
