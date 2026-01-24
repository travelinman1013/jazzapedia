#!/usr/bin/env tsx

import { execSync } from 'child_process';
import { readdirSync, statSync, readFileSync, writeFileSync, existsSync } from 'fs';
import { join, dirname } from 'path';

const PORTRAITS_DIR = process.env.PORTRAITS_DIR || './portraits';
const BUCKET_NAME = 'jazzapedia-portraits';
const R2_PREFIX = 'portraits/';
const IMAGE_EXTENSIONS = ['.jpg', '.jpeg', '.png', '.webp'];

// Manifest file tracks what's been uploaded to R2
// Stored in the portraits directory itself
const MANIFEST_FILE = join(PORTRAITS_DIR, '.r2-uploaded-manifest.json');

interface UploadStats {
  total: number;
  skipped: number;
  success: number;
  failure: number;
  errors: Array<{ file: string; error: string }>;
}

interface ManifestEntry {
  filename: string;
  size: number;
  uploadedAt: string;
}

function loadManifest(): Map<string, ManifestEntry> {
  const manifest = new Map<string, ManifestEntry>();

  try {
    if (existsSync(MANIFEST_FILE)) {
      const data = JSON.parse(readFileSync(MANIFEST_FILE, 'utf-8'));
      if (Array.isArray(data)) {
        for (const entry of data) {
          manifest.set(entry.filename, entry);
        }
      }
    }
  } catch (error) {
    console.log('Could not load manifest, will check file sizes for changes');
  }

  return manifest;
}

function saveManifest(manifest: Map<string, ManifestEntry>): void {
  try {
    const data = Array.from(manifest.values());
    writeFileSync(MANIFEST_FILE, JSON.stringify(data, null, 2));
  } catch (error) {
    console.log('Warning: Could not save manifest file');
  }
}

function getUploadedFiles(): Map<string, ManifestEntry> {
  console.log('Loading upload manifest...');
  const manifest = loadManifest();
  console.log(`Found ${manifest.size} previously uploaded files in manifest\n`);
  return manifest;
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

  // Load manifest of previously uploaded files
  const manifest = getUploadedFiles();

  // Filter to only new or changed files (check size for changes)
  const filesToUpload = imageFiles.filter(filePath => {
    const filename = filePath.substring(filePath.lastIndexOf('/') + 1);
    const existing = manifest.get(filename);

    if (!existing) return true; // New file

    // Check if file size changed (indicates update)
    try {
      const currentSize = statSync(filePath).size;
      if (currentSize !== existing.size) return true;
    } catch {
      return true;
    }

    return false;
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
      // Update manifest on successful upload
      const size = statSync(filePath).size;
      manifest.set(filename, {
        filename,
        size,
        uploadedAt: new Date().toISOString()
      });
    } else {
      stats.failure++;
      stats.errors.push({
        file: filename,
        error: 'Upload command failed'
      });
    }

    // Show progress every 10 files (or every file if small batch)
    if ((i + 1) % 10 === 0 || i === filesToUpload.length - 1) {
      const progress = ((i + 1) / filesToUpload.length * 100).toFixed(1);
      console.log(`Progress: ${i + 1}/${filesToUpload.length} (${progress}%) - Success: ${stats.success}, Failures: ${stats.failure}`);
    }
  }

  // Save updated manifest
  saveManifest(manifest);

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
