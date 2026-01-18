# Dockerfile for Jazzapedia Web
# Multi-stage build for monorepo with pnpm workspaces

# ============================================
# Stage 1: Build
# ============================================
FROM node:20-alpine AS builder

# Install pnpm
RUN corepack enable && corepack prepare pnpm@9 --activate

WORKDIR /app

# Install build dependencies for better-sqlite3 (native module)
RUN apk add --no-cache python3 make g++

# Copy root workspace files
COPY package.json pnpm-workspace.yaml pnpm-lock.yaml turbo.json tsconfig.base.json ./

# Copy packages (workspace dependencies)
COPY packages/ ./packages/

# Copy web app
COPY apps/web/ ./apps/web/

# Install all dependencies
RUN pnpm install --frozen-lockfile

# Build packages first, then web app
# Pass DEPLOY_TARGET as build arg to ensure Node adapter is used
RUN DEPLOY_TARGET=docker pnpm turbo build --filter=@jazzapedia/web --force

# Debug: show what was built
RUN echo "=== Build output ===" && ls -la apps/web/dist/ && ls -la apps/web/dist/server/ || echo "No server dir"

# ============================================
# Stage 2: Production
# ============================================
FROM node:20-alpine AS production

# Install pnpm
RUN corepack enable && corepack prepare pnpm@9 --activate

WORKDIR /app

# Install runtime dependencies for better-sqlite3
RUN apk add --no-cache python3 make g++

# Copy root workspace files
COPY package.json pnpm-workspace.yaml pnpm-lock.yaml ./

# Copy packages
COPY packages/ ./packages/

# Copy web app package.json
COPY apps/web/package.json ./apps/web/

# Install only production dependencies
RUN pnpm install --frozen-lockfile --prod

# Rebuild better-sqlite3 for the production image
RUN cd apps/web && pnpm rebuild better-sqlite3

# Copy built application from builder stage
COPY --from=builder /app/apps/web/dist ./apps/web/dist

# Debug: verify copied files
RUN echo "=== Copied dist ===" && ls -la apps/web/dist/ && ls -la apps/web/dist/server/ || echo "No server dir"

# Set environment variables
ENV DEPLOY_TARGET=docker
ENV NODE_ENV=production
ENV DATABASE_PATH=/data/jazzapedia.db
ENV HOST=0.0.0.0
ENV PORT=4321

# Create data directory for SQLite database mount
RUN mkdir -p /data

WORKDIR /app/apps/web

# Expose the port Astro runs on
EXPOSE 4321

# Health check (use 127.0.0.1 to avoid IPv6 issues in Alpine)
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://127.0.0.1:4321/ || exit 1

# Start the server
CMD ["node", "./dist/server/entry.mjs"]
