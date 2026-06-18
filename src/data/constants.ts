import type { Tier, SpiritTier } from './types'

// ── Tier Order ────────────────────────────────────────────

export const TIER_ORDER: Array<Tier> = ['Common', 'Uncommon', 'Rare', 'Ornate', 'Exquisite', 'Mythical']
export const SPIRIT_TIER_ORDER: Array<SpiritTier> = [...TIER_ORDER, 'Spirit']

// ── Tier Colors (hex) ─────────────────────────────────────

export const TIER_HEX: Record<SpiritTier, string> = {
  Common:    '#FFFFFF',
  Uncommon:  '#5555FF',
  Rare:      '#55FFFF',
  Ornate:    '#AA00AA',
  Exquisite: '#8C0691',
  Mythical:  '#FFAA00',
  Spirit:    '#E2D4F0',
}

// ── Tier Tailwind Classes ─────────────────────────────────

export const TIER_CARD: Record<SpiritTier, string> = {
  Common:    'border-stone-600 bg-stone-900/40 hover:shadow-stone-600/20',
  Uncommon:  'border-blue-600 bg-blue-950/30 hover:shadow-blue-500/20',
  Rare:      'border-cyan-500 bg-cyan-950/30 hover:shadow-cyan-400/20',
  Ornate:    'border-purple-700 bg-purple-950/30 hover:shadow-purple-500/20',
  Exquisite: 'border-fuchsia-700 bg-fuchsia-950/30 hover:shadow-fuchsia-500/20',
  Mythical:  'border-amber-500 bg-amber-950/30 hover:shadow-amber-400/30',
  Spirit:    'border-purple-400 bg-purple-950/20 hover:shadow-purple-300/30',
}

export const TIER_BADGE: Record<SpiritTier, string> = {
  Common:    'bg-stone-800 text-stone-300',
  Uncommon:  'bg-blue-950 text-blue-400',
  Rare:      'bg-cyan-950 text-cyan-400',
  Ornate:    'bg-purple-950 text-purple-400',
  Exquisite: 'bg-fuchsia-950 text-fuchsia-400',
  Mythical:  'bg-amber-950 text-amber-400',
  Spirit:    'bg-purple-900 text-purple-300',
}

export const TIER_TEXT: Record<SpiritTier, string> = {
  Common:    'text-stone-300',
  Uncommon:  'text-blue-400',
  Rare:      'text-cyan-400',
  Ornate:    'text-purple-400',
  Exquisite: 'text-fuchsia-400',
  Mythical:  'text-amber-400',
  Spirit:    'text-purple-300',
}

export const TIER_GLOW: Record<SpiritTier, string> = {
  Common:    '',
  Uncommon:  'hover:shadow-[0_0_15px_rgba(85,85,255,0.15)]',
  Rare:      'hover:shadow-[0_0_15px_rgba(85,255,255,0.2)]',
  Ornate:    'hover:shadow-[0_0_18px_rgba(170,0,170,0.2)]',
  Exquisite: 'hover:shadow-[0_0_20px_rgba(140,6,145,0.25)]',
  Mythical:  'shadow-[0_0_12px_rgba(255,170,0,0.15)] hover:shadow-[0_0_25px_rgba(255,170,0,0.35)]',
  Spirit:    'shadow-[0_0_15px_rgba(226,212,240,0.2)] hover:shadow-[0_0_30px_rgba(226,212,240,0.4)]',
}

// ── Type Icons ────────────────────────────────────────────

export const TYPE_ICONS: Record<string, string> = {
  Weapon:    '⚔️',
  Armor:     '🛡️',
  Accessory: '💎',
  Ring:      '💍',
  Healer:    '❤️‍🩹',
  Tool:      '⛏️',
  Shield:    '🛡️',
}

// ── Class Colors ──────────────────────────────────────────

export const CLASS_COLORS: Record<string, string> = {
  Rogue:            '#8B5CF6',
  Berserker:        '#DC2626',
  Dancer:           '#EC4899',
  Archer:           '#22C55E',
  Hunter:           '#16A34A',
  Beastlord:        '#D97706',
  Javelin:          '#0EA5E9',
  Hoplite:          '#0284C7',
  Knight:           '#A3A3A3',
  Striker:          '#F59E0B',
  Sentinel:         '#6B7280',
  Tank:             '#78716C',
  Healer:           '#F472B6',
  '???':            '#7C3AED',
}

// ── Stat Numbers ──────────────────────────────────────────

// Verified against the live datapack 2026-06-18 (Bountiful Harvest audit).
export const STATS = {
  totalFiles: 34159,
  totalFunctions: 22472,
  totalLines: 1226478,
  totalArtifacts: 639,
  totalCompanions: 104,
  totalSpiritWeapons: 14,
  totalRaidBosses: 13,
  totalWorldBosses: 11,
  totalSkillTrees: 15,
  totalClasses: 21,
  totalQuests: 452,
  totalLoreFragments: 896,
  totalLoreSets: 163,
  totalArmorSets: 28,
  totalProfessions: 12,
  totalCookingCategories: 12,
  totalStructures: 43,
  totalMilestones: 505,
  totalSystems: 150,
  dreamRateCap: 100,
  evolvableCompanions: 37,
}
