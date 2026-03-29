import { useState, useEffect, useCallback } from 'react'

type DownloadCounts = Record<string, number>

export function useDownloadTracker() {
  const [counts, setCounts] = useState<DownloadCounts>({})

  useEffect(() => {
    fetch('/api/downloads')
      .then(r => r.json())
      .then((data: { counts?: DownloadCounts }) => {
        if (data.counts) setCounts(data.counts)
      })
      .catch(() => {}) // silently fail if KV not bound
  }, [])

  const trackDownload = useCallback((key: string) => {
    // Optimistically increment locally
    setCounts(prev => ({ ...prev, [key]: (prev[key] || 0) + 1 }))
    // Fire-and-forget POST
    fetch('/api/downloads', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ key }),
    }).catch(() => {})
  }, [])

  return { counts, trackDownload }
}
