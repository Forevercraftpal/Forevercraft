import type { Tier, SpiritTier } from './types'

// ── Tier Order ────────────────────────────────────────────

export const TIER_ORDER: Tier[] = ['Common', 'Uncommon', 'Rare', 'Ornate', 'Exquisite', 'Mythical']
export const SPIRIT_TIER_ORDER: SpiritTier[] = [...TIER_ORDER, 'Spirit']

// ── Tier Colors (hex) ─────────────────────────────────────

export const TIER_HEX: Record<SpiritTier, string> = {
  Common:    '#9CA3AF',
  Uncommon:  '#4ADE80',
  Rare:      '#60A5FA',
  Ornate:    '#C084FC',
  Exquisite: '#FB923C',
  Mythical:  '#FBBF24',
  Spirit:    '#E2D4F0',
}

// ── Tier Tailwind Classes ─────────────────────────────────

export const TIER_CARD: Record<SpiritTier, string> = {
  Common:    'border-stone-600 bg-stone-900/40 hover:shadow-stone-600/20',
  Uncommon:  'border-green-700 bg-green-950/30 hover:shadow-green-500/20',
  Rare:      'border-blue-700 bg-blue-950/30 hover:shadow-blue-500/20',
  Ornate:    'border-purple-700 bg-purple-950/30 hover:shadow-purple-500/20',
  Exquisite: 'border-orange-700 bg-orange-950/30 hover:shadow-orange-500/20',
  Mythical:  'border-yellow-600 bg-yellow-950/30 hover:shadow-yellow-500/30',
  Spirit:    'border-purple-400 bg-purple-950/20 hover:shadow-purple-300/30',
}

export const TIER_BADGE: Record<SpiritTier, string> = {
  Common:    'bg-stone-800 text-stone-300',
  Uncommon:  'bg-green-950 text-green-400',
  Rare:      'bg-blue-950 text-blue-400',
  Ornate:    'bg-purple-950 text-purple-400',
  Exquisite: 'bg-orange-950 text-orange-400',
  Mythical:  'bg-yellow-950 text-yellow-400',
  Spirit:    'bg-purple-900 text-purple-300',
}

export const TIER_TEXT: Record<SpiritTier, string> = {
  Common:    'text-stone-400',
  Uncommon:  'text-green-400',
  Rare:      'text-blue-400',
  Ornate:    'text-purple-400',
  Exquisite: 'text-orange-400',
  Mythical:  'text-yellow-400',
  Spirit:    'text-purple-300',
}

export const TIER_GLOW: Record<SpiritTier, string> = {
  Common:    '',
  Uncommon:  'hover:shadow-[0_0_15px_rgba(74,222,128,0.15)]',
  Rare:      'hover:shadow-[0_0_15px_rgba(96,165,250,0.2)]',
  Ornate:    'hover:shadow-[0_0_18px_rgba(192,132,252,0.2)]',
  Exquisite: 'hover:shadow-[0_0_20px_rgba(251,146,60,0.25)]',
  Mythical:  'shadow-[0_0_12px_rgba(251,191,36,0.15)] hover:shadow-[0_0_25px_rgba(251,191,36,0.35)]',
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
  'Dual Swordsman': '#7C3AED',
}

// ── Stat Numbers ──────────────────────────────────────────

export const STATS = {
  totalFiles: 16527,
  totalFunctions: 10092,
  totalLines: 741729,
  totalArtifacts: 358,
  totalCompanions: 106,
  totalSpiritWeapons: 14,
  totalRaidBosses: 14,
  totalSkillTrees: 13,
  totalQuests: 250,
  totalLoreFragments: 904,
  totalArmorSets: 27,
  totalSystems: 95,
  dreamRateCap: 50,
  evolvableCompanions: 37,
}
