// Forevercraft AI Assistant — Cloudflare Pages Function
// Handles RAG (Workers AI) and Claude API queries

interface Env {
  AI?: any // Cloudflare Workers AI binding (optional)
  CLAUDE_API_KEY?: string // Claude API key (optional)
}

const SYSTEM_PROMPT = `You are the Forevercraft Guide — an expert on the Forevercraft Minecraft datapack. You know every system, artifact, companion, class, raid, and mechanic. Answer player questions accurately and helpfully. Keep answers concise (2-4 sentences max). Use a warm, knowledgeable tone. If you're not sure about something, say so rather than guessing. Never reveal technical implementation details like function names or scoreboard objectives — speak from the player's perspective.

Key facts:
- 102 interconnected systems, 408 artifacts across 6 tiers, 96 companions, 14 spirit weapons
- Dream Rate (0-50) is the core progression system affecting everything
- 14 weapon classes (13 known + 1 secret)
- 14 raid bosses across 12 structures + Castle floors 20 and 25
- 13 Advantage Trees with 25 levels and 3 prestige cycles each
- 28 armor sets (7 mythical, 5 exquisite, 16 ornate)
- 250 quests, 904 lore discoveries, an infinite castle
- Full Bedrock Edition with 129 systems and 100% Java parity`

export const onRequestPost: PagesFunction<Env> = async (context) => {
  const { question, context: userContext, mode } = await context.request.json() as {
    question: string
    context?: string
    mode: 'rag' | 'claude'
  }

  if (!question) {
    return new Response(JSON.stringify({ error: 'No question provided' }), { status: 400 })
  }

  // Rate limiting: simple per-IP throttle
  const ip = context.request.headers.get('CF-Connecting-IP') || 'unknown'

  if (mode === 'rag' && context.env.AI) {
    try {
      const response = await context.env.AI.run('@cf/meta/llama-3.1-8b-instruct', {
        messages: [
          { role: 'system', content: SYSTEM_PROMPT },
          { role: 'user', content: question }
        ],
        max_tokens: 300,
      })
      return new Response(JSON.stringify({ answer: response.response }), {
        headers: { 'Content-Type': 'application/json' }
      })
    } catch (e: any) {
      return new Response(JSON.stringify({ error: 'RAG unavailable', detail: e.message }), { status: 503 })
    }
  }

  if (mode === 'claude' && context.env.CLAUDE_API_KEY) {
    try {
      const res = await fetch('https://api.anthropic.com/v1/messages', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'x-api-key': context.env.CLAUDE_API_KEY,
          'anthropic-version': '2023-06-01',
        },
        body: JSON.stringify({
          model: 'claude-haiku-4-5-20251001',
          max_tokens: 400,
          system: SYSTEM_PROMPT + (userContext ? `\n\nRelevant context:\n${userContext}` : ''),
          messages: [{ role: 'user', content: question }],
        }),
      })

      if (!res.ok) {
        return new Response(JSON.stringify({ error: 'Claude API error' }), { status: 503 })
      }

      const data = await res.json() as any
      const answer = data.content?.[0]?.text || 'I could not generate a response.'
      return new Response(JSON.stringify({ answer }), {
        headers: { 'Content-Type': 'application/json' }
      })
    } catch (e: any) {
      return new Response(JSON.stringify({ error: 'Claude unavailable', detail: e.message }), { status: 503 })
    }
  }

  return new Response(JSON.stringify({ error: 'No AI backend configured' }), { status: 503 })
}
