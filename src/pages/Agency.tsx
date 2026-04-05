import { useState, useEffect } from 'react'

export default function Agency() {
  const [status, setStatus] = useState<'checking' | 'denied' | 'granted'>('checking')

  useEffect(() => {
    // Check if the user is on the Tailscale mesh by attempting to reach the dashboard
    // Only devices on the private mesh can resolve the Tailscale hostname
    const checkAccess = async () => {
      try {
        const controller = new AbortController()
        const timeout = setTimeout(() => controller.abort(), 3000)

        await fetch('http://josephs-macbook-pro:7777/api/health', {
          signal: controller.signal,
          mode: 'no-cors',
        })
        clearTimeout(timeout)

        // If we get ANY response (even opaque from no-cors), the host is reachable
        setStatus('granted')
      } catch {
        // Network error = not on Tailscale mesh
        setStatus('denied')
      }
    }

    checkAccess()
  }, [])

  if (status === 'checking') {
    return (
      <div className="min-h-screen bg-stone-950 flex items-center justify-center">
        <div className="text-center">
          <div className="w-8 h-8 border-2 border-purple-500 border-t-transparent rounded-full animate-spin mx-auto mb-4" />
          <p className="font-['Press_Start_2P'] text-xs text-stone-500">Verifying access...</p>
        </div>
      </div>
    )
  }

  if (status === 'denied') {
    return (
      <div className="min-h-screen bg-stone-950 flex items-center justify-center px-4">
        <div className="text-center max-w-lg">
          <div className="text-6xl mb-6">🔒</div>
          <h1 className="font-['Press_Start_2P'] text-xl text-red-500 mb-6">ACCESS DENIED</h1>
          <div className="bg-red-950/30 border border-red-900/50 rounded-xl p-6 mb-6">
            <p className="font-['Crimson_Pro'] text-stone-400 text-lg leading-relaxed mb-4">
              This area is restricted to authorized personnel on the
              <span className="text-purple-400"> AGENCY private network</span>.
            </p>
            <p className="font-['Crimson_Pro'] text-stone-500 text-base leading-relaxed">
              Connection to Headscale mesh required. If you believe you should have access,
              contact the system administrator.
            </p>
          </div>
          <div className="flex items-center justify-center gap-2 text-stone-600 text-xs font-mono">
            <span className="inline-block w-2 h-2 bg-red-500 rounded-full animate-pulse" />
            NETWORK VERIFICATION FAILED
          </div>
          <a
            href="/guide"
            className="inline-block mt-8 font-['Crimson_Pro'] text-stone-500 hover:text-stone-300 text-sm underline underline-offset-4"
          >
            Return to Guide
          </a>
        </div>
      </div>
    )
  }

  // Access granted — redirect to the dashboard
  return (
    <div className="min-h-screen bg-stone-950 flex items-center justify-center px-4">
      <div className="text-center max-w-lg">
        <div className="text-6xl mb-6">🏢</div>
        <h1 className="font-['Press_Start_2P'] text-xl text-purple-400 mb-6">AGENCY</h1>
        <div className="bg-purple-950/30 border border-purple-900/50 rounded-xl p-6 mb-6">
          <p className="font-['Crimson_Pro'] text-stone-400 text-lg leading-relaxed mb-4">
            Network verified. Welcome back, Director.
          </p>
          <p className="font-['Crimson_Pro'] text-stone-500 text-base leading-relaxed">
            Connecting to AGENCY Command Center...
          </p>
        </div>
        <a
          href="http://josephs-macbook-pro:7777"
          className="inline-block px-8 py-3 bg-purple-600 hover:bg-purple-500 text-white font-['Press_Start_2P'] text-xs rounded-lg transition-colors"
        >
          ENTER COMMAND CENTER
        </a>
        <div className="flex items-center justify-center gap-2 mt-6 text-stone-600 text-xs font-mono">
          <span className="inline-block w-2 h-2 bg-green-500 rounded-full animate-pulse" />
          HEADSCALE MESH VERIFIED
        </div>
      </div>
    </div>
  )
}
