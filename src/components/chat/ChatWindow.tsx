import { useState, useRef, useEffect } from 'react'

const API_URL = 'https://api.forevercraft.co/v1/chat/completions'
const MODEL = 'mlx-community/Qwen3-Coder-30B-A3B-Instruct-4bit'

const SYSTEM_PROMPT = `You are the Forevercraft AI Assistant — a knowledgeable guide for the Forevercraft Minecraft RPG datapack.

You know everything about:
- 371 artifacts across 6 tiers (Common, Uncommon, Rare, Ornate, Exquisite, Mythical)
- 102+ companions with biome assignments and evolution paths
- 310+ quests (base + Spirit Tome + Artisan Tome)
- The Dream Rate system (cap 50, gates on structures)
- 13 Advantage Trees, 27 armor sets, 14 spirit raid bosses
- Cooking, guilds, housing, CraftForever expansion, and 140+ total systems
- Minecraft 26.1 (pack format 101.1) mechanics

Keep responses helpful, concise, and on-topic. Use Forevercraft terminology.
Never use the word "magic" — use "arcane", "ancient", "potent", or "power" instead.
If you don't know something, say so honestly.`

interface Message {
  role: 'user' | 'assistant' | 'system'
  content: string
}

export default function ChatWindow({ compact = false }: { compact?: boolean }) {
  const [messages, setMessages] = useState<Message[]>([])
  const [input, setInput] = useState('')
  const [isLoading, setIsLoading] = useState(false)
  const [isOnline, setIsOnline] = useState(true)
  const messagesEndRef = useRef<HTMLDivElement>(null)
  const inputRef = useRef<HTMLInputElement>(null)

  useEffect(() => {
    messagesEndRef.current?.scrollIntoView({ behavior: 'smooth' })
  }, [messages])

  useEffect(() => {
    // Check if the API is reachable
    fetch('https://api.forevercraft.co/v1/models')
      .then(r => r.ok ? setIsOnline(true) : setIsOnline(false))
      .catch(() => setIsOnline(false))
  }, [])

  const sendMessage = async () => {
    if (!input.trim() || isLoading) return

    const userMessage: Message = { role: 'user', content: input.trim() }
    const newMessages = [...messages, userMessage]
    setMessages(newMessages)
    setInput('')
    setIsLoading(true)

    try {
      const response = await fetch(API_URL, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer turboquant-local'
        },
        body: JSON.stringify({
          model: MODEL,
          messages: [
            { role: 'system', content: SYSTEM_PROMPT },
            ...newMessages,
          ],
          max_tokens: 1024,
          temperature: 0.7,
          stream: false,
        }),
      })

      if (!response.ok) throw new Error('API error')

      const data = await response.json()
      const assistantMessage: Message = {
        role: 'assistant',
        content: data.choices[0].message.content,
      }
      setMessages([...newMessages, assistantMessage])
    } catch {
      setMessages([
        ...newMessages,
        {
          role: 'assistant',
          content: 'The Forevercraft AI is currently offline. The server needs to be running on the host machine. Try again later!',
        },
      ])
      setIsOnline(false)
    } finally {
      setIsLoading(false)
    }
  }

  return (
    <div className={`flex flex-col ${compact ? 'flex-1 min-h-0' : 'h-full'}`}>
      {/* Messages */}
      <div className="flex-1 overflow-y-auto p-4 space-y-4 min-h-0">
        {messages.length === 0 && (
          <div className="text-center py-8">
            <div className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-700/60 mb-4">
              FOREVERCRAFT AI
            </div>
            <p className="text-stone-500 text-sm mb-4">
              Ask me anything about the Forevercraft datapack!
            </p>
            <div className="flex flex-wrap gap-2 justify-center">
              {[
                'What is Dream Rate?',
                'How many artifacts are there?',
                'Tell me about companions',
                'What are Spirit Raids?',
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

        {isLoading && (
          <div className="flex justify-start">
            <div className="bg-stone-900/60 border border-stone-800/50 px-3 py-2 rounded-lg">
              <div className="flex gap-1">
                <span className="w-2 h-2 bg-yellow-700 rounded-full animate-bounce" style={{ animationDelay: '0ms' }} />
                <span className="w-2 h-2 bg-yellow-700 rounded-full animate-bounce" style={{ animationDelay: '150ms' }} />
                <span className="w-2 h-2 bg-yellow-700 rounded-full animate-bounce" style={{ animationDelay: '300ms' }} />
              </div>
            </div>
          </div>
        )}

        <div ref={messagesEndRef} />
      </div>

      {/* Input */}
      <div className="p-3 border-t border-stone-800/50 bg-stone-950">
        {!isOnline && (
          <div className="text-[0.6rem] text-red-500/70 mb-2 text-center">
            AI is offline — server not running
          </div>
        )}
        <div className="flex gap-2">
          <input
            ref={inputRef}
            type="text"
            value={input}
            onChange={(e) => setInput(e.target.value)}
            onKeyDown={(e) => e.key === 'Enter' && sendMessage()}
            placeholder="Ask about Forevercraft..."
            className="flex-1 bg-stone-900 border border-stone-800 rounded-lg px-3 py-2
                       text-sm text-stone-200 placeholder:text-stone-600
                       focus:outline-none focus:border-yellow-900/60
                       transition-colors"
            disabled={isLoading}
          />
          <button
            onClick={sendMessage}
            disabled={isLoading || !input.trim()}
            className="px-4 py-2 bg-yellow-700 hover:bg-yellow-600 disabled:bg-stone-800
                       disabled:text-stone-600 text-stone-950 rounded-lg text-sm font-medium
                       transition-colors"
          >
            Send
          </button>
        </div>
      </div>
    </div>
  )
}
