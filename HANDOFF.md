# ForeverCraft - Handoff Document

## Project Overview

ForeverCraft is a **React web application** that serves as a showcase/catalog site for a fantasy Minecraft datapack overhaul. The site features a Minecraft-inspired aesthetic with pixelated fonts, dark stone colors, and tier-based color coding.

**Live Site:** Deployed on Vercel (check Vercel dashboard for URL)
**Repo:** https://github.com/Deiontre10/forevercraft

---

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Frontend | React 19 + TypeScript 5.9 |
| Routing | React Router DOM 7 |
| Styling | Tailwind CSS 4.2 (via `@tailwindcss/vite` plugin) |
| Backend | Convex (serverless) |
| Build | Vite 7.3 |
| Package Manager | Bun |
| Fonts | "Press Start 2P" (headings), "Crimson Pro" (body) via Google Fonts |

---

## Project Structure

```
forevercraft/
├── convex/
│   └── schema.ts              # Convex data model (artifacts table defined)
├── src/
│   ├── App.tsx                # Router: "/" → Home, "/artifacts" → Artifacts
│   ├── main.tsx               # React root + ConvexProvider (graceful fallback)
│   ├── index.css              # Tailwind import
│   ├── components/
│   │   └── Navbar.tsx         # Sticky nav, Press Start 2P font, yellow accents
│   ├── pages/
│   │   ├── Home.tsx           # Landing page with hero, stats, feature sections
│   │   └── Artifacts.tsx      # Searchable/filterable artifact catalog
│   └── data/
│       └── artifacts.ts       # Hardcoded fake data (10 artifacts) + tier/type configs
├── vite.config.ts             # Vite + React + Tailwind plugins
├── package.json               # Scripts: dev, build, preview, convex
└── .claude/launch.json        # Dev server configs (vite on 5173, convex on 3210)
```

---

## What's Been Done

1. **Initial scaffold** — React + TypeScript + Vite + Convex setup
2. **Minecraft-themed UI** — Full styling pass with:
   - Press Start 2P pixel font for headings
   - Dark stone background palette (`stone-950`, `stone-900`)
   - Yellow/gold accent colors
   - Tier-based color system (Common→gray, Uncommon→green, Rare→blue, Ornate→purple, Exquisite→orange, Mythical→yellow)
3. **Home page** — Hero section, stats bar, feature sections (Artifacts, Classes, Companions, World, Quests)
4. **Artifacts page** — Card grid with search, tier filter, type filter, expandable ability lists
5. **Fake data** — 10 sample artifacts spanning all tiers and types
6. **Convex schema** — `artifacts` table defined with: name, tier, type, description, abilities[]
7. **Vercel deployment** — Site is live; fixed blank-page bug by adding Tailwind Vite plugin
8. **PR branch** — Work was done on `claude/infallible-hypatia` (3 commits), needs to be merged to `main`

---

## What Needs To Be Done

### Planned Features (for you!)

- [ ] **Add actual datapacks to the website** — Replace/expand the hardcoded fake data in `src/data/artifacts.ts` with real ForeverCraft datapack content. The data lives in your own repo — see the download strategy decision below.
- [ ] **Update logo/icon** — Replace the default Vite/React assets in `public/` and `src/assets/` with ForeverCraft branding.

### Decision Needed: Datapack Download Strategy

Users should be able to **download datapacks** from the website. There are two approaches — pick whichever you prefer:

**Option A: Keep Convex (recommended for polish)**
- Store datapack metadata in Convex, use Convex file storage for the actual .zip files
- Users download directly from the ForeverCraft site — no leaving the page
- You get download counts, version tracking, and a cleaner UX
- Convex has a generous free tier so cost isn't a concern early on
- Requires writing Convex queries/mutations and upload logic

**Option B: Link to GitHub (zero backend)**
- Remove Convex entirely — the site becomes fully static
- "Download" buttons link to your GitHub repo's releases page
- GitHub handles file hosting and bandwidth for free
- Simpler to maintain, but users leave the site to download
- You still get basic download stats from GitHub release analytics

Deiontre's preference is Option A (cleaner UX staying on-site), but it's your call since you own the datapack content.

### Other TODOs

- [ ] **More pages** — The Home page references Classes, Companions, Quests, and World sections but there are no dedicated pages for those yet.
- [ ] **Merge PR** — The `claude/infallible-hypatia` branch has the Minecraft styling + fake data + Tailwind fix. It should be merged to `main`.

---

## Design System Quick Reference

### Tier Colors (used in badges and borders)
| Tier | Text | Background | Border |
|------|------|-----------|--------|
| Common | stone-300 | stone-800 | stone-600 |
| Uncommon | green-300 | green-900 | green-600 |
| Rare | blue-300 | blue-900 | blue-600 |
| Ornate | purple-300 | purple-900 | purple-600 |
| Exquisite | orange-300 | orange-900 | orange-600 |
| Mythical | yellow-300 | yellow-900 | yellow-600 |

### Artifact Types
Weapon, Armor, Accessory, Ring, Healer

### Font Usage
- **Headings/UI:** `font-family: 'Press Start 2P'` with `text-shadow` for glow effects
- **Body text:** `font-family: 'Crimson Pro'`

---

## Dev Setup

```bash
# Install dependencies
bun install

# Run dev servers (both needed)
bun run dev          # Vite frontend on port 5173
npx convex dev       # Convex backend on port 3210

# Build for production
bun run build
```

### Environment Variables
- `VITE_CONVEX_URL` — Convex deployment URL (safe to expose, it's public)
- `VITE_CONVEX_SITE_URL` — Convex site URL (safe to expose)
- Both must be set in Vercel for production deployment

---

## Key Decisions Made

- **Tailwind v4** uses the new `@tailwindcss/vite` plugin (not the old PostCSS config). This was the fix for the blank Vercel deploy.
- **ConvexProvider is conditional** — If `VITE_CONVEX_URL` is missing, the app renders without Convex (graceful degradation in `main.tsx`).
- **Data is hardcoded for now** — `src/data/artifacts.ts` has fake data. The Convex schema is ready for when you want to move to a real backend.
