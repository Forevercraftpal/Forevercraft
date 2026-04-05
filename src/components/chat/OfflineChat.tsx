import { useState, useRef, useEffect } from 'react'
import { KNOWLEDGE_BASE, type KBEntry } from '../../data/knowledge-base'

function searchKB(query: string, limit = 3): KBEntry[] {
  const terms = query.toLowerCase().split(/\s+/).filter(t => t.length > 2)
  if (!terms.length) return []

  const scored = KNOWLEDGE_BASE.map(entry => {
    let score = 0
    const q = entry.q.toLowerCase()
    const a = entry.a.toLowerCase()
    const kw = entry.keywords.map(k => k.toLowerCase())

    for (const term of terms) {
      // Keyword match (highest weight)
      if (kw.some(k => k.includes(term))) score += 10
      // Question match
      if (q.includes(term)) score += 5
      // Answer match
      if (a.includes(term)) score += 2
    }

    // Bonus for exact question match
    if (q.includes(query.toLowerCase())) score += 20

    return { entry, score }
  })
    .filter(s => s.score > 0)
    .sort((a, b) => b.score - a.score)
    .slice(0, limit)

  return scored.map(s => s.entry)
}

interface Message {
  role: 'user' | 'assistant'
  content: string
}

export default function OfflineChat({ compact = false }: { compact?: boolean }) {
  const [messages, setMessages] = useState<Message[]>([])
  const [input, setInput] = useState('')
  const messagesEndRef = useRef<HTMLDivElement>(null)
  const inputRef = useRef<HTMLInputElement>(null)

  useEffect(() => {
    messagesEndRef.current?.scrollIntoView({ behavior: 'smooth' })
  }, [messages])

  const sendMessage = () => {
    if (!input.trim()) return

    const userMessage: Message = { role: 'user', content: input.trim() }
    const results = searchKB(input.trim())

    let response: string
    if (results.length > 0) {
      response = results.map((r) =>
        results.length > 1
          ? `**${r.q}**\n${r.a}`
          : r.a
      ).join('\n\n---\n\n')
    } else {
      response = "I don't have an answer for that in my knowledge base. Try asking about artifacts, companions, Dream Rate, classes, cooking, raids, or any other Forevercraft system!"
    }

    setMessages([...messages, userMessage, { role: 'assistant', content: response }])
    setInput('')
  }

  return (
    <div className={`flex flex-col ${compact ? 'flex-1 min-h-0' : 'h-full'}`}>
      {/* Messages */}
      <div className="flex-1 overflow-y-auto p-4 space-y-4 min-h-0">
        {messages.length === 0 && (
          <div className="text-center py-8">
            <div className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-700/60 mb-2">
              KNOWLEDGE BASE
            </div>
            <p className="text-stone-500 text-xs mb-1">
              3,000 answers about Forevercraft
            </p>
            <p className="text-stone-600 text-xs mb-4">
              AI is offline — searching local knowledge base instead
            </p>
            <div className="flex flex-wrap gap-2 justify-center">
              {[
                'What is Dream Rate?',
                'How do classes work?',
                'Tell me about companions',
                'How do I cook?',
              ].map((q) => (
                <button
                  key={q}
                  onClick={() => { setInput(q); inputRef.current?.focus() }}
                  className="text-xs px-3 py-1.5 rounded-full
                             bg-stone-900 border border-stone-800
                             text-stone-400 hover:text-yellow-600 hover:border-yellow-900/50
                             transition-colors"
                >
                  {q}
                </button>
              ))}
            </div>
          </div>
        )}

        {messages.map((msg, i) => (
          <div key={i} className={`flex ${msg.role === 'user' ? 'justify-end' : 'justify-start'}`}>
            <div
              className={`max-w-[85%] px-3 py-2 rounded-lg text-sm leading-relaxed ${
                msg.role === 'user'
                  ? 'bg-yellow-700/20 text-yellow-100 border border-yellow-900/30'
                  : 'bg-stone-900/60 text-stone-300 border border-stone-800/50'
              }`}
            >
              <div className="whitespace-pre-wrap">{msg.content}</div>
            </div>
          </div>
        ))}

        <div ref={messagesEndRef} />
      </div>

      {/* Input */}
      <div className="p-3 border-t border-stone-800/50 bg-stone-950">
        <div className="flex gap-2">
          <input
            ref={inputRef}
            type="text"
            value={input}
            onChange={(e) => setInput(e.target.value)}
            onKeyDown={(e) => e.key === 'Enter' && sendMessage()}
            placeholder="Search the knowledge base..."
            className="flex-1 bg-stone-900 border border-stone-800 rounded-lg px-3 py-2
                       text-sm text-stone-200 placeholder:text-stone-600
                       focus:outline-none focus:border-yellow-900/60
                       transition-colors"
          />
          <button
            onClick={sendMessage}
            disabled={!input.trim()}
            className="px-4 py-2 bg-yellow-700 hover:bg-yellow-600 disabled:bg-stone-800
                       disabled:text-stone-600 text-stone-950 rounded-lg text-sm font-medium
                       transition-colors"
          >
            Search
          </button>
        </div>
      </div>
    </div>
  )
}
