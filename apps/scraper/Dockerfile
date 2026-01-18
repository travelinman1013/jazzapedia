# ==============================================================================
# Jazzapedia Scraper Dockerfile
# Multi-stage build for monorepo with pnpm workspaces
# ==============================================================================

# ==============================================================================
# Stage 1: Builder - Compile TypeScript
# ==============================================================================
FROM node:20-slim AS builder

# Install pnpm
RUN corepack enable && corepack prepare pnpm@9 --activate

WORKDIR /app

# Copy root workspace files
COPY package.json pnpm-workspace.yaml pnpm-lock.yaml turbo.json tsconfig.base.json ./

# Copy packages (workspace dependencies)
COPY packages/ ./packages/

# Copy scraper app
COPY apps/scraper/ ./apps/scraper/

# Install all dependencies
RUN pnpm install --frozen-lockfile

# Build packages first, then scraper
RUN pnpm turbo build --filter=@jazzapedia/scraper

# ==============================================================================
# Stage 2: Production - Runtime image with Playwright and Python
# ==============================================================================
FROM mcr.microsoft.com/playwright:v1.57.0-jammy AS production

# Install pnpm
RUN corepack enable && corepack prepare pnpm@9 --activate

# Install Python 3, pip, build tools, and timezone data
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Chicago
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-venv \
    tzdata \
    make \
    g++ \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && rm -rf /var/lib/apt/lists/* \
    && ln -sf /usr/bin/python3 /usr/bin/python

WORKDIR /app

# Copy root workspace files
COPY package.json pnpm-workspace.yaml pnpm-lock.yaml ./

# Copy packages
COPY packages/ ./packages/

# Copy scraper package.json
COPY apps/scraper/package.json ./apps/scraper/

# Install production dependencies only
RUN pnpm install --frozen-lockfile --prod

# Copy compiled application from builder stage
COPY --from=builder /app/apps/scraper/dist ./apps/scraper/dist

# Copy data files (schedule.json, etc.)
COPY apps/scraper/src/data/ ./apps/scraper/src/data/

# Copy templates directory
COPY apps/scraper/templates/ ./apps/scraper/templates/

# Copy example config (actual config will be mounted at runtime)
COPY apps/scraper/config/config.example.yaml ./apps/scraper/config/config.example.yaml

# Copy Python files and install dependencies
COPY apps/scraper/requirements.txt ./apps/scraper/
COPY apps/scraper/*.py ./apps/scraper/
RUN pip3 install --no-cache-dir -r apps/scraper/requirements.txt

# Create non-root user for security
RUN groupadd -r wwoz && useradd -r -g wwoz wwoz

# Create directories that need to be writable and set ownership
RUN mkdir -p /app/state && \
    chown -R wwoz:wwoz /app

# Set environment variables
ENV CONFIG_PATH=/app/apps/scraper/config/config.yaml
ENV NODE_ENV=production

WORKDIR /app/apps/scraper

# Switch to non-root user
USER wwoz

# Run in continuous mode by default (no --once flag)
ENTRYPOINT ["node", "dist/index.js"]
