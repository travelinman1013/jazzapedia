/**
 * Password Verification Endpoint
 *
 * POST /api/auth/verify
 * Body: { password: string }
 * Returns: { success: boolean, token?: string, expiresAt?: number, error?: string }
 */

import type { APIRoute } from 'astro';

// Simple in-memory rate limiting
const rateLimitMap = new Map<string, { count: number; resetAt: number }>();
const RATE_LIMIT_MAX = 5;
const RATE_LIMIT_WINDOW_MS = 60 * 1000; // 1 minute

function checkRateLimit(ip: string): boolean {
  const now = Date.now();
  const entry = rateLimitMap.get(ip);

  if (!entry || entry.resetAt < now) {
    rateLimitMap.set(ip, { count: 1, resetAt: now + RATE_LIMIT_WINDOW_MS });
    return true;
  }

  if (entry.count >= RATE_LIMIT_MAX) {
    return false;
  }

  entry.count++;
  return true;
}

/**
 * Generate a simple token (timestamp + random)
 * In production, consider using proper JWT
 */
function generateToken(): string {
  const timestamp = Date.now().toString(36);
  const random = Math.random().toString(36).substring(2, 15);
  return `${timestamp}-${random}`;
}

export const POST: APIRoute = async ({ request, locals, clientAddress }) => {
  const ip = clientAddress || request.headers.get('CF-Connecting-IP') || 'unknown';

  // Rate limit check
  if (!checkRateLimit(ip)) {
    return new Response(
      JSON.stringify({
        success: false,
        error: 'Too many attempts. Please try again later.',
      }),
      {
        status: 429,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }

  try {
    const body = (await request.json()) as { password?: string };
    const { password } = body;

    if (!password || typeof password !== 'string') {
      return new Response(
        JSON.stringify({ success: false, error: 'Password required' }),
        {
          status: 400,
          headers: { 'Content-Type': 'application/json' },
        }
      );
    }

    // Get the edit password from environment
    let editPassword: string | undefined;

    // Check for Docker environment
    if (typeof process !== 'undefined' && process.env?.EDIT_PASSWORD) {
      editPassword = process.env.EDIT_PASSWORD;
    } else {
      // Cloudflare environment
      const runtime = (locals as Record<string, unknown>).runtime as
        | { env?: { EDIT_PASSWORD?: string } }
        | undefined;
      editPassword = runtime?.env?.EDIT_PASSWORD;
    }

    if (!editPassword) {
      console.error('[auth/verify] EDIT_PASSWORD not configured');
      return new Response(
        JSON.stringify({ success: false, error: 'Editing not configured' }),
        {
          status: 500,
          headers: { 'Content-Type': 'application/json' },
        }
      );
    }

    if (password !== editPassword) {
      return new Response(
        JSON.stringify({ success: false, error: 'Invalid password' }),
        {
          status: 401,
          headers: { 'Content-Type': 'application/json' },
        }
      );
    }

    // Generate token valid for 4 hours
    const token = generateToken();
    const expiresAt = Date.now() + 4 * 60 * 60 * 1000;

    return new Response(
      JSON.stringify({
        success: true,
        token,
        expiresAt,
      }),
      {
        status: 200,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  } catch (error) {
    console.error('[auth/verify] Error:', error);
    return new Response(
      JSON.stringify({ success: false, error: 'Server error' }),
      {
        status: 500,
        headers: { 'Content-Type': 'application/json' },
      }
    );
  }
};
