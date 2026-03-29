import { useState, useEffect } from 'react'
import ChatWindow from '../components/chat/ChatWindow'

export default function Chat() {
  const [isOnline, setIsOnline] = useState<boolean | null>(null)

  useEffect(() => {
    fetch('https://api.forevercraft.co/v1/models', { signal: AbortSignal.timeout(5000) })
      .then(r => r.ok ? setIsOnline(true) : setIsOnline(false))
      .catch(() => setIsOnline(false))
  }, [])

  return (
    <div className="min-h-screen bg-stone-950 pt-20">
      <div className="max-w-3xl mx-auto px-4">
        {/* Header */}
        <div className="text-center mb-6">
          <h1 className="font-['Press_Start_2P'] text-sm text-yellow-600 tracking-wider mb-3">
            FOREVERCRAFT AI
          </h1>
          <p className="text-stone-500 text-sm max-w-md mx-auto">
            Your personal Forevercraft assistant. Ask about artifacts, companions,
            Dream Rate, quests, or any of the 140+ systems.
          </p>
        </div>

        {isOnline === null ? (
          /* Loading state */
          <div className="text-center py-20">
            <div className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-700 animate-pulse">
              CONNECTING...
            </div>
          </div>
        ) : isOnline ? (
          /* Online — show chat */
          <>
            <div className="bg-stone-950 border border-yellow-900/30 rounded-lg shadow-xl shadow-yellow-900/10
                            h-[calc(100vh-14rem)] flex flex-col overflow-hidden">
              <ChatWindow />
            </div>
            <p className="text-center text-stone-700 text-xs mt-3">
              Powered by a custom-trained AI model. Responses may not always be accurate.
            </p>
          </>
        ) : (
          /* Offline fallback */
          <div className="text-center py-16 border border-stone-800/50 rounded-lg bg-stone-900/20">
            <div className="text-4xl mb-4">🌙</div>
            <h2 className="font-['Press_Start_2P'] text-[0.6rem] text-stone-500 mb-4">
              AI IS SLEEPING
            </h2>
            <p className="text-stone-600 text-sm max-w-sm mx-auto mb-6">
              The Forevercraft AI runs on a local server and is currently offline.
              In the meantime, explore our knowledge base!
            </p>
            <div className="flex flex-wrap gap-3 justify-center">
              <a href="/artifacts" className="px-4 py-2 bg-stone-800 hover:bg-stone-700 text-stone-300 rounded-lg text-sm transition-colors">
                Artifacts
              </a>
              <a href="/companions" className="px-4 py-2 bg-stone-800 hover:bg-stone-700 text-stone-300 rounded-lg text-sm transition-colors">
                Companions
              </a>
              <a href="/dream-rate" className="px-4 py-2 bg-stone-800 hover:bg-stone-700 text-stone-300 rounded-lg text-sm transition-colors">
                Dream Rate
              </a>
              <a href="/lore" className="px-4 py-2 bg-stone-800 hover:bg-stone-700 text-stone-300 rounded-lg text-sm transition-colors">
                Lore
              </a>
            </div>
          </div>
        )}
      </div>
    </div>
  )
}
