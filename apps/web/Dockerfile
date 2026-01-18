# Dockerfile for Jazzapedia
# Multi-stage build for optimized image size

# ============================================
# Stage 1: Build
# ============================================
FROM node:20-alpine AS builder

WORKDIR /app

# Install build dependencies for better-sqlite3 (native module)
RUN apk add --no-cache python3 make g++

# Copy package files
COPY package*.json ./

# Install all dependencies (including devDependencies for build)
RUN npm ci

# Copy source code
COPY . .

# Set environment for Docker build
ENV DEPLOY_TARGET=docker
ENV NODE_ENV=production

# Build the Astro SSR application
RUN npm run build

# ============================================
# Stage 2: Production
# ============================================
FROM node:20-alpine AS production

WORKDIR /app

# Install runtime dependencies for better-sqlite3
RUN apk add --no-cache python3 make g++

# Copy package files
COPY package*.json ./

# Install only production dependencies
RUN npm ci --omit=dev

# Rebuild better-sqlite3 for the production image
RUN npm rebuild better-sqlite3

# Copy built application from builder stage
COPY --from=builder /app/dist ./dist

# Set environment variables
ENV DEPLOY_TARGET=docker
ENV NODE_ENV=production
ENV DATABASE_PATH=/data/jazzapedia.db
ENV HOST=0.0.0.0
ENV PORT=4321

# Create data directory for SQLite database mount
RUN mkdir -p /data

# Expose the port Astro runs on
EXPOSE 4321

# Health check (use 127.0.0.1 to avoid IPv6 issues in Alpine)
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://127.0.0.1:4321/ || exit 1

# Start the server
CMD ["node", "./dist/server/entry.mjs"]
