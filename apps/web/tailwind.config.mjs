/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  darkMode: ['selector', '[data-mode="dark"]'],
  theme: {
    extend: {
      colors: {
        // Jazz Club core palette - use directly for special elements
        jazz: {
          black: '#0D0D0D',
          charcoal: '#1A1A1F',
          smoke: '#242428',
          slate: '#2E2E33',
          burgundy: '#4A1C2E',
          amber: '#D4A254',
          gold: '#C9A962',
          brass: '#B8860B',
          cream: '#F5F0E6',
          'warm-white': '#FAF7F0',
          paper: '#F0EBE3',
        },

        // Electric accents
        electric: {
          cyan: '#00D9FF',
          'cyan-dim': '#00B8D9',
          blue: '#0066FF',
          purple: '#9D4EDD',
          magenta: '#FF006E',
        },

        // Semantic colors using CSS variables for theming
        wiki: {
          // Background colors
          bg: 'var(--color-bg)',
          'bg-content': 'var(--color-bg-content)',
          'bg-infobox': 'var(--color-bg-infobox)',
          'bg-nav': 'var(--color-bg-nav)',
          'bg-elevated': 'var(--color-bg-elevated)',
          'bg-card': 'var(--color-bg-card)',

          // Border colors
          border: 'var(--color-border)',
          'border-light': 'var(--color-border-light)',
          'border-infobox': 'var(--color-border-infobox)',
          'border-accent': 'var(--color-border-accent)',

          // Text colors
          text: 'var(--color-text)',
          'text-secondary': 'var(--color-text-secondary)',
          'text-muted': 'var(--color-text-muted)',
          'text-heading': 'var(--color-text-heading)',

          // Link colors (theme accent)
          link: 'var(--color-link)',
          'link-hover': 'var(--color-link-hover)',
          'link-visited': 'var(--color-link-visited)',
          'link-red': 'var(--color-link-red)',

          // Accent colors
          accent: 'var(--color-accent)',
          'accent-light': 'var(--color-accent-light)',
          'accent-glow': 'var(--color-accent-glow)',

          // Genre/tag colors
          tag: {
            bg: 'var(--color-tag-bg)',
            border: 'var(--color-tag-border)',
            text: 'var(--color-tag-text)',
          },
        },
      },

      fontFamily: {
        // Display font - Art Deco elegance
        display: [
          'Playfair Display Variable',
          'Playfair Display',
          'Georgia',
          'Times New Roman',
          'serif',
        ],
        // Body font - Clean, modern readability
        sans: [
          'Inter Variable',
          'Inter',
          'system-ui',
          '-apple-system',
          'BlinkMacSystemFont',
          'Segoe UI',
          'sans-serif',
        ],
        // Monospace - Stats and data
        mono: [
          'JetBrains Mono Variable',
          'JetBrains Mono',
          'Fira Code',
          'Consolas',
          'monospace',
        ],
        // Legacy serif (for backwards compat in article content)
        serif: [
          'Playfair Display Variable',
          'Georgia',
          'Times New Roman',
          'serif',
        ],
      },

      fontSize: {
        'xs': ['0.75rem', { lineHeight: '1rem' }],
        'sm': ['0.875rem', { lineHeight: '1.25rem' }],
        'base': ['1rem', { lineHeight: '1.65' }],
        'lg': ['1.125rem', { lineHeight: '1.6' }],
        'xl': ['1.25rem', { lineHeight: '1.5' }],
        '2xl': ['1.5rem', { lineHeight: '1.4' }],
        '3xl': ['1.875rem', { lineHeight: '1.3' }],
        '4xl': ['2.25rem', { lineHeight: '1.2' }],
        '5xl': ['3rem', { lineHeight: '1.1' }],
        '6xl': ['3.75rem', { lineHeight: '1' }],
      },

      borderRadius: {
        'sm': 'var(--radius-sm)',
        'md': 'var(--radius-md)',
        'lg': 'var(--radius-lg)',
        'xl': 'var(--radius-xl)',
      },

      boxShadow: {
        'card': 'var(--shadow-card)',
        'elevated': 'var(--shadow-elevated)',
        'glow-cyan': 'var(--glow-cyan)',
        'glow-amber': 'var(--glow-amber)',
        'glow-subtle': 'var(--glow-subtle)',
      },

      transitionTimingFunction: {
        'jazz': 'var(--ease-jazz)',
        'bounce': 'var(--ease-bounce)',
        'smooth': 'var(--ease-smooth)',
      },

      transitionDuration: {
        'fast': 'var(--duration-fast)',
        'normal': 'var(--duration-normal)',
        'slow': 'var(--duration-slow)',
      },

      animation: {
        'shimmer': 'shimmer 1.5s infinite',
        'glow-pulse': 'glow-pulse 2s ease-in-out infinite',
        'slide-in': 'slide-in 0.3s var(--ease-jazz)',
        'fade-in': 'fade-in 0.3s var(--ease-smooth)',
      },

      keyframes: {
        shimmer: {
          '0%': { backgroundPosition: '200% 0' },
          '100%': { backgroundPosition: '-200% 0' },
        },
        'glow-pulse': {
          '0%, 100%': { boxShadow: 'var(--glow-subtle)' },
          '50%': { boxShadow: 'var(--glow-cyan)' },
        },
        'slide-in': {
          '0%': { transform: 'translateY(-10px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        },
        'fade-in': {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
      },

      typography: {
        DEFAULT: {
          css: {
            maxWidth: 'none',
            color: 'var(--color-text)',
            lineHeight: '1.65',
            a: {
              color: 'var(--color-link)',
              textDecoration: 'none',
              transition: 'color 150ms ease',
              '&:hover': {
                color: 'var(--color-link-hover)',
                textDecoration: 'underline',
              },
            },
            'h1, h2, h3, h4': {
              fontFamily: 'Playfair Display Variable, Georgia, serif',
              fontWeight: '500',
              color: 'var(--color-text-heading)',
              letterSpacing: '-0.01em',
            },
            h1: {
              fontSize: '2.25em',
              borderBottom: '2px solid var(--color-border-accent)',
              paddingBottom: '0.3em',
              marginBottom: '0.8em',
            },
            h2: {
              fontSize: '1.75em',
              borderBottom: '1px solid var(--color-border)',
              paddingBottom: '0.25em',
              marginTop: '1.5em',
            },
            h3: {
              fontSize: '1.35em',
              marginTop: '1.25em',
            },
            h4: {
              fontSize: '1.15em',
            },
            blockquote: {
              fontStyle: 'italic',
              borderLeftColor: 'var(--color-accent)',
              borderLeftWidth: '3px',
              color: 'var(--color-text-secondary)',
            },
            code: {
              fontFamily: 'JetBrains Mono Variable, monospace',
              backgroundColor: 'var(--color-bg-nav)',
              padding: '0.2em 0.4em',
              borderRadius: 'var(--radius-sm)',
              fontSize: '0.9em',
            },
            'code::before': {
              content: 'none',
            },
            'code::after': {
              content: 'none',
            },
          },
        },
      },
    },
  },
  plugins: [],
};
