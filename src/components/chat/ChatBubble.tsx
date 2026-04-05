import { useState, useEffect } from 'react'
import ChatWindow from './ChatWindow'

export default function ChatBubble() {
  const [isOpen, setIsOpen] = useState(false)
  const [isOnline, setIsOnline] = useState(false)

  // Check if AI server is reachable every 30 seconds
  useEffect(() => {
    const check = () => {
      fetch('https://api.forevercraft.co/v1/models', { signal: AbortSignal.timeout(5000) })
        .then(r => r.ok ? setIsOnline(true) : setIsOnline(false))
        .catch(() => setIsOnline(false))
    }
    check()
    const interval = setInterval(check, 30000)
    return () => clearInterval(interval)
  }, [])

  // Don't show the bubble at all if AI is offline
  if (!isOnline && !isOpen) return null

  return (
    <>
      {/* Chat Window */}
      {isOpen && (
        <div className="fixed bottom-20 right-4 z-50 w-[380px] h-[520px] max-w-[calc(100vw-2rem)] max-h-[calc(100vh-6rem)]
                        bg-stone-950 border border-yellow-900/40 rounded-lg shadow-2xl shadow-yellow-900/20
                        flex flex-col overflow-hidden">
          {/* Header */}
          <div className="flex items-center justify-between px-4 py-3 bg-stone-900/80 border-b border-yellow-900/30">
            <div className="flex items-center gap-2">
              <div className={`w-2 h-2 rounded-full ${isOnline ? 'bg-emerald-500 animate-pulse' : 'bg-red-500'}`} />
              <span className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-600 tracking-wider">
                FOREVERCRAFT AI
              </span>
            </div>
            <button
              onClick={() => setIsOpen(false)}
              className="text-stone-500 hover:text-yellow-600 transition-colors text-lg leading-none"
            >
              &times;
            </button>
          </div>

          {/* Chat Content */}
          <ChatWindow compact />
        </div>
      )}

      {/* Floating Button */}
      <button
        onClick={() => setIsOpen(!isOpen)}
        className="fixed bottom-4 right-4 z-50 w-14 h-14
                   bg-yellow-700 hover:bg-yellow-600 active:scale-95
                   rounded-full shadow-lg shadow-yellow-900/40
                   flex items-center justify-center
                   transition-all duration-200 group"
        title="Ask the Forevercraft AI"
      >
        {isOpen ? (
          <svg className="w-6 h-6 text-stone-950" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
          </svg>
        ) : (
          <svg className="w-6 h-6 text-stone-950 group-hover:scale-110 transition-transform" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
          </svg>
        )}
      </button>
    </>
  )
}
