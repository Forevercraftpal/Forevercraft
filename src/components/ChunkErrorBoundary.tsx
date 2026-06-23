import { Component } from 'react'
import type { ErrorInfo, ReactNode } from 'react'

// Catches render-time errors anywhere in the routed content — most importantly
// failed dynamic-import (chunk load) errors — so a flaky CDN response shows a
// recoverable retry card instead of unmounting the whole app into a black screen.

function isChunkLoadError(error: unknown): boolean {
  const message = error instanceof Error ? error.message : String(error)
  return /Failed to fetch dynamically imported module|error loading dynamically imported module|Importing a module script failed|ChunkLoadError|Loading chunk \d+ failed/i.test(
    message,
  )
}

interface Props {
  children: ReactNode
}

interface State {
  hasError: boolean
  isChunkError: boolean
}

export default class ChunkErrorBoundary extends Component<Props, State> {
  state: State = { hasError: false, isChunkError: false }

  static getDerivedStateFromError(error: unknown): State {
    return { hasError: true, isChunkError: isChunkLoadError(error) }
  }

  componentDidCatch(error: unknown, info: ErrorInfo): void {
    // eslint-disable-next-line no-console -- surface render crashes for debugging
    console.error('[ChunkErrorBoundary]', error, info?.componentStack)
  }

  private handleReload = (): void => {
    window.location.reload()
  }

  render(): ReactNode {
    if (!this.state.hasError) return this.props.children

    return (
      <div className="min-h-screen bg-stone-950 flex items-center justify-center px-6">
        <div className="text-center max-w-md">
          <div className="font-['Pixelify_Sans'] text-[0.7rem] text-yellow-600 tracking-widest mb-5">
            {this.state.isChunkError ? 'CONNECTION HICCUP' : 'SOMETHING BROKE'}
          </div>
          <p className="font-['Crimson_Pro'] text-stone-300 text-base leading-relaxed mb-6">
            {this.state.isChunkError
              ? 'A piece of the page failed to load — usually a brief network or CDN blip. Reloading almost always fixes it.'
              : 'Something went wrong rendering this page. Reloading should get you back.'}
          </p>
          <button
            type="button"
            onClick={this.handleReload}
            className="inline-block px-5 py-2 rounded font-['Pixelify_Sans'] text-[0.55rem] tracking-wider text-stone-950 bg-yellow-600 hover:bg-yellow-500 transition-colors"
          >
            RELOAD
          </button>
        </div>
      </div>
    )
  }
}
