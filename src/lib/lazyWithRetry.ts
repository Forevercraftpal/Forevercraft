import { lazy } from 'react'
import type { ComponentType, LazyExoticComponent } from 'react'

// Drop-in replacement for React.lazy that survives flaky chunk loads.
//
// Why: every route is code-split. When the CDN intermittently fails to serve a
// JS chunk (e.g. Cloudflare 503 / "Failed to fetch dynamically imported module"),
// the dynamic import() rejects and — with no recovery — the whole React tree
// unmounts into a black screen. This wrapper:
//   1. retries the import a couple of times (rides out transient CDN hiccups), and
//   2. if it still fails, forces ONE hard reload to fetch a fresh index.html
//      (handles stale chunk hashes after a redeploy), guarded so it can't loop.
// If it fails even after a reload, the error propagates to ChunkErrorBoundary,
// which shows a retry card instead of a blank page.

async function retryImport<T>(
  factory: () => Promise<T>,
  retries: number,
  delayMs: number,
): Promise<T> {
  let lastErr: unknown
  for (let attempt = 0; attempt <= retries; attempt++) {
    try {
      return await factory()
    } catch (err) {
      lastErr = err
      if (attempt < retries) {
        await new Promise((resolve) => setTimeout(resolve, delayMs * (attempt + 1)))
      }
    }
  }
  throw lastErr
}

export function lazyWithRetry<T extends ComponentType<unknown>>(
  factory: () => Promise<{ default: T }>,
  name = 'chunk',
): LazyExoticComponent<T> {
  return lazy(async () => {
    const reloadKey = `fc-chunk-reload:${name}`
    try {
      const mod = await retryImport(factory, 2, 400)
      // Clear the one-shot reload guard once this chunk has loaded cleanly.
      try {
        sessionStorage.removeItem(reloadKey)
      } catch {
        /* sessionStorage may be unavailable (private mode) — ignore */
      }
      return mod
    } catch (err) {
      let alreadyReloaded = false
      try {
        alreadyReloaded = sessionStorage.getItem(reloadKey) === '1'
        if (!alreadyReloaded) sessionStorage.setItem(reloadKey, '1')
      } catch {
        /* ignore storage failures */
      }
      if (!alreadyReloaded) {
        // Fetch a fresh index.html (new chunk hashes) and retry from scratch.
        window.location.reload()
        // Never resolve, so Suspense keeps showing its fallback until the reload
        // takes over the page.
        return new Promise<never>(() => {})
      }
      throw err
    }
  })
}
