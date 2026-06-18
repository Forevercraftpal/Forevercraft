import { useState, useRef, useEffect } from 'react'
import { createPortal } from 'react-dom'
import { KNOWLEDGE_BASE, type KBEntry } from '../../data/knowledge-base'

interface Message {
  role: 'user' | 'assistant' | 'system'
  content: string
  source?: 'kb' | 'rag' | 'claude'
}

// Synonym expansion for better matching
const SYNONYMS: Record<string, Array<string>> = {
  'class': ['classes', 'weapon class', 'weapon classes', 'combat class', 'fighting style'],
  'best': ['strongest', 'most powerful', 'top', 'recommended', 'op'],
  'pet': ['companion', 'companions', 'pets', 'animal'],
  'boss': ['bosses', 'raid boss', 'raid bosses', 'enemy'],
  'weapon': ['weapons', 'sword', 'axe', 'bow', 'dagger', 'spear', 'mace', 'trident', 'shield'],
  'armor': ['armour', 'armor set', 'armor sets', 'gear', 'equipment'],
  'skill': ['skill tree', 'skill trees', 'advantage', 'advantage tree'],
  'level': ['levels', 'leveling', 'level up', 'xp', 'experience'],
  'quest': ['quests', 'mission', 'missions', 'task', 'tasks'],
  'guild': ['guilds', 'clan', 'clans', 'group'],
  'cook': ['cooking', 'food', 'meal', 'meals', 'recipe', 'recipes'],
  'house': ['housing', 'home', 'base', 'hearthstone'],
  'friend': ['friends', 'friendship', 'social', 'buddy'],
  'spirit': ['spirit weapon', 'spirit weapons', 'legendary', 'endgame'],
  'raid': ['raids', 'spirit raid', 'spirit raids', 'dungeon raid'],
  'lore': ['lore discovery', 'lore fragment', 'story', 'stories'],
  'dr': ['dream rate', 'dreams', 'luck'],
  'castle': ['infinite castle', 'tower', 'endless dungeon'],
  'gacha': ['fountain', 'gacha fountain', 'random', 'lottery'],
  'marry': ['marriage', 'married', 'wedding', 'family'],
  'duel': ['duels', 'pvp', 'fight', 'arena'],
  'cosmetic': ['cosmetics', 'particles', 'titles', 'appearance'],
  'trim': ['trims', 'armor trim', 'armor trims', 'smithing'],
}

// Stop words to ignore when matching
const STOP_WORDS = new Set(['what', 'how', 'does', 'the', 'is', 'are', 'can', 'do', 'get', 'a', 'an', 'i', 'my', 'me', 'to', 'in', 'of', 'for', 'and', 'or', 'with', 'this', 'that', 'there', 'where', 'when', 'why', 'which', 'who', 'have', 'has', 'had', 'be', 'been', 'about', 'it', 'its', 'you', 'your', 'we', 'they', 'them', 'from', 'was', 'were', 'will', 'would', 'should', 'could', 'did', 'does', 'not', 'no', 'so', 'if', 'but', 'all', 'any', 'some', 'on', 'at', 'by', 'up'])

interface ScoredResult {
  entry: KBEntry
  score: number
}

function searchKB(query: string): Array<ScoredResult> {
  const q = query.toLowerCase().trim()
  const allWords = q.split(/\s+/)
  const contentWords = allWords.filter(w => w.length > 1 && !STOP_WORDS.has(w))

  // Expand query with synonyms
  const expandedTerms = new Set(contentWords)
  for (const word of contentWords) {
    if (SYNONYMS[word]) {
      for (const syn of SYNONYMS[word]) expandedTerms.add(syn)
    }
    // Also check if the word is a synonym value and add its key
    for (const [key, syns] of Object.entries(SYNONYMS)) {
      if (syns.includes(word)) expandedTerms.add(key)
    }
  }

  const scored = KNOWLEDGE_BASE.map(entry => {
    let score = 0
    const qLower = entry.q.toLowerCase()
    const catLower = entry.category.toLowerCase()

    // Tier 1: Exact or near-exact question match (highest priority)
    if (qLower === q) score += 50
    else if (qLower.includes(q) && q.length > 5) score += 25

    // Tier 2: Full keyword phrase match (e.g., "dream rate" matches keyword "dream rate")
    for (const kw of entry.keywords) {
      if (q.includes(kw) && kw.length > 2) score += 10
      if (kw.includes(q) && q.length > 3) score += 8
    }

    // Tier 3: Content word matches against keywords (word boundaries)
    for (const kw of entry.keywords) {
      const kwLower = kw.toLowerCase()
      for (const word of contentWords) {
        if (kwLower === word) score += 7
        else if (kwLower.includes(word) && word.length > 3) score += 3
      }
    }

    // Tier 4: Expanded synonym matches against keywords
    for (const kw of entry.keywords) {
      for (const term of expandedTerms) {
        if (kw === term && !contentWords.includes(term)) score += 4
      }
    }

    // Tier 5: Category match (only content words, not stop words)
    for (const word of contentWords) {
      if (catLower === word || catLower.includes(word)) score += 5
    }

    // Tier 6: Question text contains content words (lower weight)
    for (const word of contentWords) {
      if (word.length > 3 && qLower.includes(word)) score += 2
    }

    // DO NOT score answer text — this causes false positives

    return { entry, score }
  })

  return scored
    .filter(s => s.score > 6)
    .sort((a, b) => b.score - a.score)
    .slice(0, 2)
}

// Conversational small talk patterns
const GREETINGS = ['hey', 'hi', 'hello', 'sup', 'yo', 'howdy', 'greetings', 'hola', 'whats up', "what's up"]
const THANKS = ['thanks', 'thank you', 'ty', 'thx', 'appreciate', 'helpful', 'perfect', 'awesome', 'great', 'cool', 'nice']
const FAREWELLS = ['bye', 'goodbye', 'later', 'cya', 'see ya', 'gtg', 'gotta go', 'peace']
const JOKES = ['joke', 'funny', 'lol', 'lmao', 'haha', 'tell me something']

const GREETING_RESPONSES = [
  "Hey there, adventurer! What can I help you with? Ask me anything about Forevercraft's 138 systems!",
  "Welcome! I know every artifact, companion, and hidden mechanic in Forevercraft. What's on your mind?",
  "Greetings, traveler! Whether it's Dream Rate, raids, or cooking recipes — I've got answers. Fire away!",
  "Hey! Ready to dive into Forevercraft? I can help with anything from beginner tips to endgame strategy.",
]

const THANKS_RESPONSES = [
  "Happy to help! Let me know if you have more questions. There's always more to discover!",
  "Anytime! Forevercraft has 138 systems — I bet there's something else you're curious about!",
  "You're welcome! If you need anything else, just ask. Good luck out there, adventurer!",
  "Glad I could help! The dream awaits. Anything else?",
]

const FAREWELL_RESPONSES = [
  "Safe travels, adventurer! May your Dream Rate be ever rising. Come back anytime!",
  "See you out there! Remember — the committed win the race to glory.",
  "Farewell! Every block you break, every fish you catch — it all matters. Good luck!",
]

const JOKE_RESPONSES = [
  "Why did the Creeper go to the Black Market? Because it wanted to make an *explosive* deal! ...I'll see myself out. Got a real question for me?",
  "What's a Rogue's favorite type of music? Anything with a good *backstab* beat! ...Okay, okay. What can I actually help with?",
  "How many Forevercraft developers does it take to write 16,101 functions? Just one. One very dedicated person. That's not a joke, that's just impressive. What else you got?",
]

const NO_RESULT_RESPONSES = [
  "Hmm, I'm not sure about that one! Try rephrasing, or ask about a specific system like Dream Rate, companions, raids, cooking, or classes.",
  "I don't have that in my codex yet! I know about 138 systems though — try asking about artifacts, skill trees, spirit weapons, gacha, or housing!",
  "That's a tricky one! My knowledge covers all of Forevercraft's systems. Try something like 'How do companions work?' or 'What is the Gacha Fountain?'",
]

// Conversational follow-up suggestions based on category
const FOLLOW_UPS: Record<string, Array<string>> = {
  'Dream Rate': ['How do I increase my DR?', 'What structures unlock at each DR?', 'What are temporary DR sources?'],
  'Artifacts': ['How do armor sets work?', 'What are Constellations?', 'How does transmutation work?'],
  'Companions': ['What are evolved companions?', 'How does the relationship system work?', 'Best companion for combat?'],
  'Classes': ['How do I choose a class?', 'What is Class Affinity?', 'What are spirit weapons?'],
  'Spirit Weapons': ['How do I get a Spirit Weapon?', 'What is Metamorphosis?', 'What is the Dream Storm Crystal?'],
  'Skill Trees': ['What trees are available?', 'What are prestige abilities?', 'How do I respec?'],
  'Raids': ['How many raid bosses are there?', 'How do I prepare for raids?', 'What does the voting system do?'],
  'Cooking': ['What are the best combat meals?', 'What are seasonal recipes?', 'What are Spirit Fish?'],
  'Gacha': ['What are the drop rates?', 'How does pity work?', 'What is Dreamdust?'],
  'FAQ': ['Where can I download Forevercraft?', 'Is there a Bedrock Edition?', 'What Minecraft versions are supported?'],
}

function pickRandom<T>(arr: Array<T>): T {
  return arr[Math.floor(Math.random() * arr.length)]
}

function checkSmallTalk(query: string): string | null {
  const q = query.toLowerCase().trim()
  if (GREETINGS.some(g => q === g || q.startsWith(`${g} `) || q.startsWith(`${g}!`))) return pickRandom(GREETING_RESPONSES)
  if (THANKS.some(t => q.includes(t))) return pickRandom(THANKS_RESPONSES)
  if (FAREWELLS.some(f => q === f || q.startsWith(`${f} `) || q.startsWith(`${f}!`))) return pickRandom(FAREWELL_RESPONSES)
  if (JOKES.some(j => q.includes(j))) return pickRandom(JOKE_RESPONSES)
  if (q === '?' || q === 'help' || q === 'what can you do') return "I'm the Forevercraft Guide! Ask me about any of the 138 systems — artifacts, companions, raids, cooking, classes, Dream Rate, housing, guilds, gacha, spirit weapons, skill trees, and way more. Just type your question!"
  return null
}

// Confidence levels based on score
function getConfidence(score: number): 'high' | 'medium' | 'low' {
  if (score >= 20) return 'high'
  if (score >= 12) return 'medium'
  return 'low'
}

// Confidence-aware intros
const CONFIDENCE_INTROS = {
  high: {
    'what': ['Great question! ', 'Ah, glad you asked! ', ''],
    'how': ["Here's how: ", 'Let me break it down — ', "Sure thing! "],
    'best': ["Here's my take: ", 'Great question for strategy — ', ''],
    'where': ["I know exactly where! ", "Here's where to look: ", ''],
    'default': ['', 'Here you go — ', ''],
  },
  medium: {
    'what': ["I'm fairly sure about this — ", "Here's what I know: ", ''],
    'how': ["If I'm reading your question right — ", "Here's what should work: ", ''],
    'best': ["Based on what I know — ", "Here's my best answer: ", ''],
    'where': ["I believe it's — ", "Try this: ", ''],
    'default': ["Here's what I found — ", ''],
  },
  low: {
    'what': ["I'm not 100% sure, but here's my best guess — ", "This might be what you're looking for — "],
    'how': ["I may not have the exact answer, but this could help — ", "Not fully sure, but try this — "],
    'best': ["Take this with a grain of salt, but — ", "I'm less certain here, but — "],
    'where': ["I'm not totally sure where, but — ", "My best guess — "],
    'default': ["I found something that might help, but I'm not fully confident — ", "This might be what you need — "],
  },
}

// Format KB results into a conversational response with confidence
function formatKBResponse(scored: Array<ScoredResult>, query: string): string {
  if (scored.length === 0) return ''

  const main = scored[0]
  const confidence = getConfidence(main.score)
  const answer = main.entry.a

  // Pick intro based on confidence + question type
  const q = query.toLowerCase()
  let introType: 'what' | 'how' | 'best' | 'where' | 'default' = 'default'
  if (q.startsWith('what is') || q.startsWith('what are') || q.startsWith("what's")) introType = 'what'
  else if (q.startsWith('how do') || q.startsWith('how does') || q.startsWith('how to') || q.startsWith('how can')) introType = 'how'
  else if (q.includes('best') || q.includes('recommend') || q.includes('strongest')) introType = 'best'
  else if (q.includes('where') || q.includes('find') || q.includes('locate')) introType = 'where'

  const intros = CONFIDENCE_INTROS[confidence][introType] || CONFIDENCE_INTROS[confidence]['default']
  const intro = pickRandom(intros)

  let response = intro + answer

  // Low confidence: add a nudge to rephrase
  if (confidence === 'low') {
    response += '\n\n🔄 *Not quite what you meant? Try rephrasing or asking about a specific system!*'
  }

  // Add follow-up suggestions (high/medium confidence only)
  if (confidence !== 'low') {
    const suggestions = FOLLOW_UPS[main.entry.category]
    if (suggestions) {
      const filtered = suggestions.filter(s => s.toLowerCase() !== main.entry.q.toLowerCase())
      if (filtered.length > 0) {
        const picks = filtered.slice(0, 2)
        response +=`\\n\\n💡 *You might also want to know:* ${picks.map(p => `"${p}"`).join(' or ')}`
      }
    }
  }

  return response
}

// RAG endpoint (Cloudflare Workers AI)
async function queryRAG(question: string): Promise<string | null> {
  try {
    const res = await fetch('/api/ask', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ question, mode: 'rag' })
    })
    if (!res.ok) return null
    const data = await res.json()
    return data.answer || null
  } catch {
    return null
  }
}

// Claude API endpoint
async function queryClaude(question: string, context: string): Promise<string | null> {
  try {
    const res = await fetch('/api/ask', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ question, context, mode: 'claude' })
    })
    if (!res.ok) return null
    const data = await res.json()
    return data.answer || null
  } catch {
    return null
  }
}

function sourceLabel(s?: string): string {
  if (s === 'kb') return '📚 Knowledge Base'
  if (s === 'rag') return '🔍 Deep Search'
  if (s === 'claude') return '✨ AI Powered'
  return ''
}

export default function ForevercraftAI() {
  const [open, setOpen] = useState(false)
  const [input, setInput] = useState('')
  const [messages, setMessages] = useState<Array<Message>>([
    { role: 'system', content: 'Welcome, adventurer! I\'m the Forevercraft Guide — ask me anything about the pack\'s 138 systems, artifacts, companions, raids, or progression. I know it all!' }
  ])
  const [loading, setLoading] = useState(false)
  const messagesEnd = useRef<HTMLDivElement>(null)
  const inputRef = useRef<HTMLInputElement>(null)

  useEffect(() => {
    messagesEnd.current?.scrollIntoView({ behavior: 'smooth' })
  }, [messages])

  useEffect(() => {
    if (open) inputRef.current?.focus()
  }, [open])

  async function handleSend() {
    const q = input.trim()
    if (!q || loading) return

    setInput('')
    setMessages(prev => [...prev, { role: 'user', content: q }])
    setLoading(true)

    // Check small talk first (greetings, thanks, farewells, jokes)
    const smallTalkResponse = checkSmallTalk(q)
    if (smallTalkResponse) {
      setMessages(prev => [...prev, { role: 'assistant', content: smallTalkResponse, source: 'kb' }])
      setLoading(false)
      return
    }

    // Tier 1: Knowledge Base (instant, with confidence scoring)
    const kbScored = searchKB(q)
    const kbAnswer = formatKBResponse(kbScored, q)

    if (kbAnswer) {
      setMessages(prev => [...prev, { role: 'assistant', content: kbAnswer, source: 'kb' }])
      setLoading(false)
      return
    }

    // Tier 2: RAG (free, slower)
    setMessages(prev => [...prev, { role: 'assistant', content: '🔮 *Consulting the ancient codex...*', source: 'rag' }])

    const ragAnswer = await queryRAG(q)
    if (ragAnswer) {
      setMessages(prev => {
        const updated = [...prev]
        updated[updated.length - 1] = { role: 'assistant', content: ragAnswer, source: 'rag' }
        return updated
      })
      setLoading(false)
      return
    }

    // Tier 3: Claude API (best quality)
    const context = KNOWLEDGE_BASE.slice(0, 10).map(e => `Q: ${e.q}\nA: ${e.a}`).join('\n\n')
    const claudeAnswer = await queryClaude(q, context)
    if (claudeAnswer) {
      setMessages(prev => {
        const updated = [...prev]
        updated[updated.length - 1] = { role: 'assistant', content: claudeAnswer, source: 'claude' }
        return updated
      })
      setLoading(false)
      return
    }

    // Fallback — use NO_RESULT_RESPONSES
    setMessages(prev => {
      const updated = [...prev]
      updated[updated.length - 1] = {
        role: 'assistant',
        content: pickRandom(NO_RESULT_RESPONSES),
        source: 'kb'
      }
      return updated
    })
    setLoading(false)
  }

  // Check if donation popup is visible (shifts AI button up)
  const [donoVisible, setDonoVisible] = useState(false)
  useEffect(() => {
    const check = () => {
      const popup = document.getElementById('dono-popup')
      setDonoVisible(popup !== null && popup.style.display !== 'none')
    }
    const observer = new MutationObserver(check)
    observer.observe(document.body, { childList: true, subtree: true, attributes: true })
    check()
    return () => observer.disconnect()
  }, [])

  const portalTarget = document.getElementById('popup-root') || document.body

  return createPortal(
    <>
      {/* Toggle Button */}
      <button
        onClick={() => setOpen(!open)}
        style={{
          position: 'fixed',
          bottom: donoVisible ? '180px' : '24px',
          right: '24px',
          zIndex: 99999,
          width: '56px',
          height: '56px',
          borderRadius: '50%',
          background: 'linear-gradient(135deg, #b8860b 0%, #daa520 50%, #b8860b 100%)',
          border: '2px solid rgba(218, 165, 32, 0.6)',
          color: '#1a1a2e',
          fontSize: '22px',
          cursor: 'pointer',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          boxShadow: '0 4px 20px rgba(218, 165, 32, 0.3)',
          transition: 'transform 0.2s, box-shadow 0.2s, bottom 0.3s ease',
          fontWeight: 'bold',
        }}
        onMouseEnter={e => { e.currentTarget.style.transform = 'scale(1.1)'; e.currentTarget.style.boxShadow = '0 6px 30px rgba(218, 165, 32, 0.5)' }}
        onMouseLeave={e => { e.currentTarget.style.transform = 'scale(1)'; e.currentTarget.style.boxShadow = '0 4px 20px rgba(218, 165, 32, 0.3)' }}
        title="Ask the Forevercraft Guide"
      >
        {open ? '✕' : '❓'}
      </button>

      {/* Chat Panel */}
      {open && (
        <div
          style={{
            position: 'fixed',
            bottom: donoVisible ? '248px' : '92px',
            right: '24px',
            zIndex: 99998,
            width: '400px',
            maxWidth: 'calc(100vw - 48px)',
            height: '520px',
            maxHeight: 'calc(100vh - 120px)',
            borderRadius: '16px',
            border: '1px solid rgba(218, 165, 32, 0.3)',
            background: 'linear-gradient(180deg, #1a1a2e 0%, #0f0f1a 100%)',
            display: 'flex',
            flexDirection: 'column',
            overflow: 'hidden',
            boxShadow: '0 10px 40px rgba(0,0,0,0.6), 0 0 60px rgba(218, 165, 32, 0.1)',
          }}
        >
          {/* Header */}
          <div style={{
            padding: '16px',
            borderBottom: '1px solid rgba(218, 165, 32, 0.2)',
            background: 'rgba(218, 165, 32, 0.05)',
            display: 'flex',
            alignItems: 'center',
            gap: '12px',
          }}>
            <img src="/icon.png" alt="" style={{ width: '32px', height: '32px', imageRendering: 'pixelated' as const }} />
            <div>
              <div style={{ fontFamily: "'Press Start 2P'", fontSize: '0.6rem', color: '#daa520', letterSpacing: '0.1em' }}>
                FOREVERCRAFT GUIDE
              </div>
              <div style={{ fontFamily: "'Crimson Pro'", fontSize: '0.8rem', color: '#8a8a9a', marginTop: '2px' }}>
                Ask me anything about the pack
              </div>
            </div>
          </div>

          {/* Messages */}
          <div style={{
            flex: 1,
            overflowY: 'auto',
            padding: '16px',
            display: 'flex',
            flexDirection: 'column',
            gap: '12px',
          }}>
            {messages.map((msg, i) => (
              <div key={i} style={{
                alignSelf: msg.role === 'user' ? 'flex-end' : 'flex-start',
                maxWidth: '85%',
              }}>
                <div style={{
                  padding: '10px 14px',
                  borderRadius: msg.role === 'user' ? '14px 14px 4px 14px' : '14px 14px 14px 4px',
                  background: msg.role === 'user'
                    ? 'rgba(218, 165, 32, 0.15)'
                    : msg.role === 'system'
                      ? 'rgba(100, 100, 140, 0.1)'
                      : 'rgba(60, 60, 80, 0.3)',
                  border: msg.role === 'user'
                    ? '1px solid rgba(218, 165, 32, 0.3)'
                    : '1px solid rgba(100, 100, 140, 0.15)',
                }}>
                  <p style={{
                    fontFamily: "'Crimson Pro'",
                    fontSize: '0.95rem',
                    color: msg.role === 'system' ? '#8a8a9a' : '#d4d4e0',
                    lineHeight: 1.5,
                    margin: 0,
                    whiteSpace: 'pre-wrap',
                  }}>
                    {msg.content}
                  </p>
                </div>
                {msg.source && (
                  <div style={{
                    fontFamily: "'Crimson Pro'",
                    fontSize: '0.7rem',
                    color: '#5a5a6a',
                    marginTop: '4px',
                    paddingLeft: '8px',
                  }}>
                    {sourceLabel(msg.source)}
                  </div>
                )}
              </div>
            ))}
            {loading && (
              <div style={{
                alignSelf: 'flex-start',
                padding: '10px 14px',
                borderRadius: '14px 14px 14px 4px',
                background: 'rgba(60, 60, 80, 0.3)',
                border: '1px solid rgba(100, 100, 140, 0.15)',
              }}>
                <div style={{ display: 'flex', gap: '4px' }}>
                  {[0, 1, 2].map(i => (
                    <div key={i} style={{
                      width: '8px', height: '8px', borderRadius: '50%',
                      background: '#daa520',
                      animation: `pulse 1.4s ${i * 0.2}s infinite`,
                      opacity: 0.4,
                    }} />
                  ))}
                </div>
              </div>
            )}
            <div ref={messagesEnd} />
          </div>

          {/* Input */}
          <div style={{
            padding: '12px 16px',
            borderTop: '1px solid rgba(218, 165, 32, 0.2)',
            background: 'rgba(0,0,0,0.2)',
            display: 'flex',
            gap: '8px',
          }}>
            <input
              ref={inputRef}
              value={input}
              onChange={e => setInput(e.target.value)}
              onKeyDown={e => e.key === 'Enter' && handleSend()}
              placeholder="Ask about any system..."
              style={{
                flex: 1,
                background: 'rgba(255,255,255,0.05)',
                border: '1px solid rgba(218, 165, 32, 0.2)',
                borderRadius: '8px',
                padding: '10px 14px',
                color: '#d4d4e0',
                fontFamily: "'Crimson Pro'",
                fontSize: '0.95rem',
                outline: 'none',
              }}
            />
            <button
              onClick={handleSend}
              disabled={loading || !input.trim()}
              style={{
                padding: '10px 16px',
                borderRadius: '8px',
                background: loading || !input.trim() ? 'rgba(218, 165, 32, 0.1)' : 'rgba(218, 165, 32, 0.2)',
                border: '1px solid rgba(218, 165, 32, 0.3)',
                color: '#daa520',
                cursor: loading || !input.trim() ? 'not-allowed' : 'pointer',
                fontFamily: "'Press Start 2P'",
                fontSize: '0.5rem',
                letterSpacing: '0.05em',
              }}
            >
              ASK
            </button>
          </div>

          {/* Quick Questions */}
          <div style={{
            padding: '8px 16px 12px',
            display: 'flex',
            gap: '6px',
            flexWrap: 'wrap',
          }}>
            {['Dream Rate?', 'How to get companions?', 'Spirit Weapons?', 'Best class?'].map(q => (
              <button
                key={q}
                onClick={() => { setInput(q); }}
                style={{
                  padding: '4px 10px',
                  borderRadius: '12px',
                  background: 'rgba(218, 165, 32, 0.08)',
                  border: '1px solid rgba(218, 165, 32, 0.15)',
                  color: '#8a8a6a',
                  fontFamily: "'Crimson Pro'",
                  fontSize: '0.75rem',
                  cursor: 'pointer',
                }}
              >
                {q}
              </button>
            ))}
          </div>
        </div>
      )}

      <style>{`
        @keyframes pulse {
          0%, 80%, 100% { opacity: 0.4; transform: scale(1); }
          40% { opacity: 1; transform: scale(1.2); }
        }
      `}</style>
    </>,
    portalTarget
  )
}
