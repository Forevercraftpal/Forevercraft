// ── Core Tier System ──────────────────────────────────────

export type Tier = 'Common' | 'Uncommon' | 'Rare' | 'Ornate' | 'Exquisite' | 'Mythical'
export type SpiritTier = Tier | 'Spirit'

// ── Artifacts ─────────────────────────────────────────────

export type ArtifactType = 'Weapon' | 'Armor' | 'Accessory' | 'Ring' | 'Healer' | 'Tool' | 'Shield'
export type WeaponSubtype =
  | 'Sword' | 'Bow' | 'Crossbow' | 'Dagger' | 'Spear' | 'Axe'
  | 'Mace' | 'Trident' | 'Gauntlet' | 'Fan' | 'Staff' | 'Pickaxe'
  | 'Shovel' | 'Hoe' | 'Shears' | 'Fishing Rod' | 'Elytra' | 'Lance'
  | 'Horn'

export interface Artifact {
  id: number
  name: string
  tier: Tier
  type: ArtifactType
  subtype?: WeaponSubtype | string
  description: string
  abilities: string[]
  setId?: string
  biome?: string
}

// ── Armor Sets ────────────────────────────────────────────

export interface ArmorSetPiece {
  slot: string
  armor?: number
  toughness?: number
  passive: string
}

export interface ArmorSet {
  id: string
  name: string
  tier: Tier
  theme: string
  pieces: ArmorSetPiece[]
  weapons?: string[]
  twoPiece?: string
  fourPiece?: string
  fivePiece?: string
  notes?: string
}

// ── Spirit Weapons ────────────────────────────────────────

export interface SpiritAbility {
  name: string
  description: string
  unlockTier?: SpiritTier
}

export interface SpiritWeapon {
  id: number
  name: string
  className: string
  weaponType: string
  bossName: string
  structure: string
  hasTwin: boolean
  twinName?: string
  lore: string
  abilities: SpiritAbility[]
  metamorphosisRequirements: string[]
  color: string
}

// ── Classes ───────────────────────────────────────────────

export interface ClassAbility {
  name: string
  description: string
}

export interface GameClass {
  id: string
  name: string
  archetype: string
  weaponType: string
  coreMechanic: string
  strengths: string[]
  weaknesses: string[]
  abilities: ClassAbility[]
  subclassOf?: string
  subclass?: string
  spiritWeapon?: string
  raidBoss?: string
  isSecret?: boolean
  color: string
}

// ── Companions ────────────────────────────────────────────

export interface Companion {
  id: number
  signature: string
  displayName: string
  tier: Tier
  abilityName: string
  abilityDescription: string
  canEvolve: boolean
  evolvedName?: string
  evolvedAbility?: string
}

// ── Raid Bosses ───────────────────────────────────────────

export interface BossPhase {
  phase: number
  hpThreshold: string
  abilities: string[]
  mechanics: string[]
}

export interface RaidBoss {
  id: string
  name: string
  title: string
  structure: string
  className: string
  spiritWeapon: string
  phases: BossPhase[]
  puzzle: string
  enrageTimer: string
  difficulty: number
  color: string
  lore: string
}

// ── Skill Trees ───────────────────────────────────────────

export interface SkillTree {
  id: string
  name: string
  column: 'adventure' | 'progression' | 'gathering'
  description: string
  maxLevel: number
  maxPrestige: number
  prestigeAbilities: string[]
  icon: string
}

// ── World Systems ─────────────────────────────────────────

export interface Season {
  id: string
  name: string
  durationDays: number
  description: string
  gradient: string
  icon: string
}

export interface WorldEvent {
  id: string
  name: string
  description: string
  effects: string[]
  duration: string
  omenWarning: string
  color: string
}

export interface MoonPhase {
  name: string
  icon: string
  effect: string
  fill: number
}

// ── Dream Rate ────────────────────────────────────────────

export interface DreamSource {
  name: string
  category: 'permanent' | 'temporary' | 'equipment' | 'world'
  maxValue: number
  description: string
}

export interface DreamMilestone {
  threshold: number
  title: string
  description: string
  color: string
}

// ── Quests ────────────────────────────────────────────────

export interface QuestTier {
  name: string
  description: string
  color: string
  reputationRequired: string
}

export interface ReputationLevel {
  name: string
  threshold: number
  perks: string[]
}

// ── Cooking ───────────────────────────────────────────────

export interface Recipe {
  name: string
  category: string
  ingredients: string[]
  effect: string
  duration?: string
  seasonal?: string
}

// ── CraftForever ──────────────────────────────────────────

export interface SpiritTool {
  id: string
  name: string
  toolType: string
  abilities: string[]
  lore: string
}

export interface TradeTrial {
  category: string
  description: string
  tiers: number
  masterTrial: string
}

// ── Social Systems ────────────────────────────────────────

export interface PartyCombo {
  name: string
  trigger: string
  effect: string
  icon: string
}

export interface GuildFeature {
  name: string
  description: string
  icon: string
}
