# Coding Conventions

**Analysis Date:** 2026-02-02

## Naming Patterns

**Files:**
- TypeScript source files: `camelCase.ts` (e.g., `showGuesser.ts`, `config.ts`)
- Service classes: `PascalCaseService.ts` (e.g., `WorkflowService.ts`, `ArtistDiscoveryService.ts`)
- Module classes: `PascalCase.ts` (e.g., `WWOZScraper.ts`, `SpotifyEnricher.ts`, `ObsidianArchiver.ts`)
- Astro components: `PascalCase.astro` (e.g., `ArtistCard.astro`, `ConnectionGraph.astro`)
- Scripts: `kebab-case.ts` (e.g., `sync-incremental.ts`, `upload-portraits-r2.ts`)
- Utility files: `camelCase.ts` or single-word (e.g., `slug.ts`, `markdown.ts`, `hash.ts`)

**Functions:**
- Use `camelCase` for function names
- Pure utility functions: `generateSlug()`, `stripHtml()`, `computeFileHash()`
- Service methods: `runOnce()`, `processArchive()`, `backfillDailySnapshots()`
- Async functions: prefix with `async` keyword, no special naming convention
- Private class methods: prefix with `private` keyword (e.g., `private parsePlayedTimeToMinutes()`)

**Variables:**
- Use `camelCase` for local variables and parameters
- Constants in SCREAMING_SNAKE_CASE for config objects (e.g., `CONFIG`, `EDITABLE_FIELDS`, `FIELD_VALIDATIONS`)
- Boolean variables: descriptive names (e.g., `isDup`, `alreadyArchived`, `stoppedDueToDuplicates`, `isDocker`)
- Counters/accumulators: descriptive names (e.g., `processed`, `added`, `duplicatesInARow`)

**Types:**
- Use `PascalCase` for interfaces and types
- Interfaces start with `I` for service contracts (e.g., `IScraper`, `IEnricher`, `IArchiver`)
- Data model interfaces: no prefix (e.g., `Artist`, `SpotifyData`, `AudioProfile`, `MusicalConnections`)
- Type aliases: `PascalCase` (e.g., `ArchiveStatus`, `EditableField`, `DatabaseEnvironment`)
- Generic type parameters: single uppercase letter `T` or descriptive `PascalCase` (e.g., `PreparedStatement<T>`)

## Code Style

**Formatting:**
- No formatter config detected (no `.prettierrc`, `.eslintrc`, or `biome.json`)
- Code appears to follow default TypeScript conventions
- 2-space indentation observed consistently
- Single quotes for strings preferred
- Semicolons required at statement ends

**Linting:**
- No ESLint configuration detected
- No Biome configuration detected
- TypeScript compiler provides basic checking via `tsconfig.json`
- One ESLint disable comment found: `// eslint-disable-next-line no-constant-condition` in `apps/scraper/src/services/WorkflowService.ts:282`

## Import Organization

**Order:**
1. Node.js built-in modules (e.g., `import fs from 'fs'`, `import path from 'path'`)
2. External dependencies (e.g., `import { Command } from 'commander'`, `import dayjs from 'dayjs'`)
3. Local workspace packages (e.g., `import { Logger } from '../utils/logger.js'`, `import type { Artist } from '@jazzapedia/types'`)
4. Relative imports (e.g., `import { getDatabase } from '../../lib/db'`)

**Path Aliases:**
- Workspace packages use `@jazzapedia/*` namespace
  - `@jazzapedia/types` - Shared type definitions
  - `@jazzapedia/db` - Database abstraction layer
  - `@jazzapedia/utils` - Shared utilities
- No path aliases for internal imports (uses relative paths)
- All local imports use `.js` extension for ESM compatibility (e.g., `'./logger.js'`, `'./config.js'`)

**Type Imports:**
- Use `import type` for type-only imports (e.g., `import type { IArchiver, IEnricher, IScraper } from '../types/index.js'`)
- Inline type imports: `import { type Artist } from '@jazzapedia/types'`

## Error Handling

**Patterns:**
- Try-catch blocks with logging for non-fatal errors
- Logger.error() takes message string and optional Error object
- Continue execution with fallbacks rather than crashing
- Async errors: catch and log, often with `(non-fatal)` suffix in message

**Example pattern:**
```typescript
try {
  await someOperation();
} catch (err) {
  Logger.error('Operation failed (non-fatal).', err as Error);
}
```

**Error casting:**
- Unknown errors cast to `Error` type: `err as Error`
- Type assertions used for error handling: `(err as any).statusCode` for Spotify API errors

**Validation:**
- Input validation via config object checks
- Null/undefined checks before operations: `if (!data) return;`
- Type guards: `typeof value === 'function'` for optional interface methods
- Array length checks: `if (array.length === 0) return;`

## Logging

**Framework:** Custom `Logger` class in `apps/scraper/src/utils/logger.ts`

**Patterns:**
- `Logger.info()` - Normal operations, workflow progress
- `Logger.warn()` - Warnings, skipped operations
- `Logger.error()` - Errors with optional Error object
- `Logger.debug()` - Verbose logging (enabled via `LOG_LEVEL=debug` or `DEBUG=true`)

**Log message style:**
- Descriptive, action-oriented messages
- Include context in brackets for subsystems: `[Artist Discovery]`, `[db]`
- Numeric counts in messages: `Processed=${processed}, Added=${added}`
- Timestamps automatically added by Logger class
- Colored output using `chalk` library

**Debug logging:**
- Only emits when `LOG_LEVEL=debug` or `DEBUG` env var is truthy
- Used for verbose operations: cache clearing, date routing, duplicate tracking
- No `[DEBUG]` label in output (just timestamp + message)

## Comments

**When to Comment:**
- Complex algorithms: multi-line comments explaining logic
- Workarounds: explain why alternative approach needed
- API contracts: JSDoc-style comments on interfaces
- Non-obvious behavior: inline comments for tricky code
- Section headers: block comments for major code sections

**JSDoc/TSDoc:**
- Used on public interfaces and exported functions
- Parameter descriptions with `@param`
- Return type descriptions with `@returns`
- Usage examples in doc comments for key functions

**Example:**
```typescript
/**
 * Get the appropriate database adapter based on environment
 *
 * @param locals - Astro.locals object containing runtime bindings
 * @returns Database adapter or null if not available
 *
 * Usage in Astro pages:
 * ```typescript
 * const db = await getDatabase(Astro.locals);
 * ```
 */
export async function getDatabase(locals: App.Locals): Promise<DatabaseAdapter | null>
```

**File headers:**
- Scripts include shebang and purpose comment: `#!/usr/bin/env npx tsx`
- Description of script functionality at top
- Usage examples for CLI scripts

## Function Design

**Size:**
- Functions range from 5-100+ lines
- Service methods can be large (e.g., `runOnce()` is 200+ lines)
- Utility functions tend to be small (5-30 lines)
- No strict line limit enforced

**Parameters:**
- Prefer object parameters for functions with 3+ arguments
- Destructure object parameters in function signature
- Optional parameters have default values or marked with `?`
- Use rest parameters for variadic functions: `bind(...values: unknown[])`

**Return Values:**
- Explicit return types on all exported functions
- Async functions return `Promise<T>`
- Nullable returns use `T | null` pattern
- Void functions explicitly typed: `Promise<void>` or `void`
- Complex return types use interfaces: `{ date: string; playlistUrl: string }`

**Async/await:**
- All async operations use async/await (no raw Promises)
- No unhandled promise rejections (always wrapped in try-catch)
- Fire-and-forget pattern for background tasks with explicit `.catch()`:
  ```typescript
  this.artistDiscoveryService.processArchive(archivePath).catch((err) => {
    Logger.error(`Artist discovery failed:`, err as Error);
  });
  ```

## Module Design

**Exports:**
- Named exports preferred over default exports
- Exception: better-sqlite3 uses default export: `const module = await import('better-sqlite3'); DatabaseConstructor = module.default;`
- Re-export types from barrel files: `export type { Artist, SpotifyData } from './artist.js'`
- Export constants: `export { EDITABLE_FIELDS, FIELD_VALIDATIONS }`

**Barrel Files:**
- Used in packages: `packages/types/src/index.ts`, `packages/utils/src/index.ts`, `packages/db/src/index.ts`
- Group related exports by category with comments
- Re-export everything from submodules for convenience

**Encapsulation:**
- Classes use `private` keyword for internal methods and properties
- Singletons for shared state (e.g., `let sqliteDb: any = null`)
- Public API methods documented with JSDoc
- Internal helpers use `private` or not exported

## TypeScript Conventions

**Strict mode:**
- `"strict": true` in all `tsconfig.json` files
- Explicit types on function signatures
- No implicit `any` except where necessary (e.g., `any` for better-sqlite3 wrappers)

**Type assertions:**
- Use `as Type` syntax (not `<Type>` syntax)
- Common patterns: `err as Error`, `runtime as any`, `enricher as any`
- Type guards for narrowing: `typeof x === 'function'`, `x instanceof Error`

**Module resolution:**
- `"module": "NodeNext"` for scraper (Node.js ESM)
- `"moduleResolution": "NodeNext"` for scraper
- Astro uses `"extends": "astro/tsconfigs/strict"`
- All `.ts` imports use `.js` extension for ESM compatibility

**Interface vs Type:**
- Use `interface` for object shapes and contracts
- Use `type` for unions, intersections, and aliases
- Extend interfaces with additional properties using `interface X extends Y`

---

*Convention analysis: 2026-02-02*
