// Download counter — Cloudflare Pages Function
// GET  /api/downloads         → returns all counts
// POST /api/downloads {key}   → increments count for key

interface Env {
  DOWNLOAD_COUNTS?: KVNamespace
}

const VALID_KEYS = [
  'java', 'bedrock-zip', 'bedrock-mcaddon', 'custom-builder',
  'rp-prime-1day', 'rp-prime-2day',
  'rp-autumn', 'rp-winter', 'rp-spring', 'rp-summer',
]

export const onRequestGet: PagesFunction<Env> = async (context) => {
  const kv = context.env.DOWNLOAD_COUNTS
  if (!kv) {
    return Response.json({ error: 'KV not bound', counts: {} }, { status: 200 })
  }

  const counts: Record<string, number> = {}
  for (const key of VALID_KEYS) {
    const val = await kv.get(`dl:${key}`)
    counts[key] = val ? parseInt(val, 10) : 0
  }

  return Response.json({ counts }, {
    headers: { 'Cache-Control': 'public, max-age=60' }
  })
}

export const onRequestPost: PagesFunction<Env> = async (context) => {
  const kv = context.env.DOWNLOAD_COUNTS
  if (!kv) {
    return Response.json({ error: 'KV not bound' }, { status: 200 })
  }

  const { key } = await context.request.json() as { key: string }

  if (!key || !VALID_KEYS.includes(key)) {
    return Response.json({ error: 'Invalid key' }, { status: 400 })
  }

  const current = await kv.get(`dl:${key}`)
  const count = (current ? parseInt(current, 10) : 0) + 1
  await kv.put(`dl:${key}`, count.toString())

  return Response.json({ key, count })
}
