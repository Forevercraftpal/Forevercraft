export type Tier =
  | 'Common'
  | 'Uncommon'
  | 'Rare'
  | 'Ornate'
  | 'Exquisite'
  | 'Mythical'
export type ArtifactType = 'Weapon' | 'Armor' | 'Accessory' | 'Ring' | 'Healer'

export interface Artifact {
  id: number
  name: string
  tier: Tier
  type: ArtifactType
  description: string
  abilities: string[]
}

export const artifacts: Artifact[] = [
  // ── COMMON ──────────────────────────────────────────────
  {
    id: 1,
    name: 'Bone Slingshot',
    tier: 'Common',
    type: 'Weapon',
    description: 'A crude but reliable ranged weapon crafted from bone.',
    abilities: ['Fires projectiles at nearby enemies', 'Chance to slow on hit']
  },
  {
    id: 2,
    name: 'Medicinal Bandages',
    tier: 'Common',
    type: 'Healer',
    description: 'Simple wrappings infused with healing herbs.',
    abilities: ['Restores 1 heart on use', 'Short cooldown']
  },
  {
    id: 3,
    name: 'Wooden Buckler',
    tier: 'Common',
    type: 'Armor',
    description: 'A splintered shield that barely holds together.',
    abilities: ['Blocks 15% of incoming damage', 'Breaks after 50 hits']
  },
  {
    id: 4,
    name: 'Copper Charm',
    tier: 'Common',
    type: 'Accessory',
    description: 'A dull charm that hums when danger is near.',
    abilities: ['Warns of hostile mobs within 16 blocks']
  },
  {
    id: 5,
    name: 'Pebble Ring',
    tier: 'Common',
    type: 'Ring',
    description: 'A ring carved from river stone. Smooth to the touch.',
    abilities: ['Grants Haste I while mining']
  },
  {
    id: 6,
    name: 'Iron Shortsword',
    tier: 'Common',
    type: 'Weapon',
    description: 'A stubby blade favored by novice adventurers.',
    abilities: ['Quick swing speed', '10% chance to disarm on hit']
  },

  // ── UNCOMMON ────────────────────────────────────────────
  {
    id: 7,
    name: 'Amethyst Ring',
    tier: 'Uncommon',
    type: 'Ring',
    description: 'A polished ring that sharpens your sight in darkness.',
    abilities: ['Grants permanent Night Vision']
  },
  {
    id: 8,
    name: 'Mossy Cloak',
    tier: 'Uncommon',
    type: 'Armor',
    description: 'A cloak woven from living moss. It breathes with the forest.',
    abilities: [
      'Regeneration I in forest biomes',
      'Camouflage: mobs lose aggro faster'
    ]
  },
  {
    id: 9,
    name: 'Lantern of the Lost',
    tier: 'Uncommon',
    type: 'Accessory',
    description: 'A ghostly lantern that guides you toward buried treasure.',
    abilities: [
      'Points toward nearest chest within 64 blocks',
      'Glows brighter near rare loot'
    ]
  },
  {
    id: 10,
    name: 'Thorn Dagger',
    tier: 'Uncommon',
    type: 'Weapon',
    description: 'A dagger grown from a rosebush. Its thorns never dull.',
    abilities: [
      'Applies Poison I on hit',
      'Deals bonus damage to Arthropods'
    ]
  },
  {
    id: 11,
    name: 'Honeycomb Salve',
    tier: 'Uncommon',
    type: 'Healer',
    description: 'Sweet-smelling salve that mends wounds over time.',
    abilities: [
      'Applies Regeneration I for 10 seconds',
      'Removes Poison effect'
    ]
  },
  {
    id: 12,
    name: 'Featherfall Boots',
    tier: 'Uncommon',
    type: 'Armor',
    description: 'Boots lined with phantom membrane. Light as air.',
    abilities: [
      'Negates all fall damage',
      'Grants Slow Falling for 3 seconds after jumping'
    ]
  },

  // ── RARE ────────────────────────────────────────────────
  {
    id: 13,
    name: 'Ocean Trident',
    tier: 'Rare',
    type: 'Weapon',
    description: 'A biome-specific weapon forged for ocean fighters.',
    abilities: [
      'Deals bonus damage in water',
      'Chance to summon a wave on hit',
      'Lifesteal in rain'
    ]
  },
  {
    id: 14,
    name: 'Frost Bow',
    tier: 'Rare',
    type: 'Weapon',
    description: 'A bow carved from frozen wood, found only in icy biomes.',
    abilities: [
      'Freezes enemies on hit',
      'Overcharge for bonus knockback',
      'Passive frost aura'
    ]
  },
  {
    id: 15,
    name: 'Warden\'s Pendant',
    tier: 'Rare',
    type: 'Accessory',
    description: 'A sculk pendant that pulses with deep dark energy.',
    abilities: [
      'Grants Darkness immunity',
      'Sonic Pulse: stuns nearby enemies every 30 seconds',
      'Vibration Sense: highlights invisible mobs'
    ]
  },
  {
    id: 16,
    name: 'Crimson Chainmail',
    tier: 'Rare',
    type: 'Armor',
    description: 'Nether-forged chainmail that smells of sulfur and ambition.',
    abilities: [
      'Fire Resistance in the Nether',
      'Thorns II passively',
      '2-piece bonus: +10% movement speed'
    ]
  },
  {
    id: 17,
    name: 'Emerald Signet',
    tier: 'Rare',
    type: 'Ring',
    description: 'A ring favored by wandering traders. It reeks of profit.',
    abilities: [
      'Villager trades cost 20% less',
      'Passive emerald generation (1 per 10 minutes)',
      'Luck I while worn'
    ]
  },
  {
    id: 18,
    name: 'Moonwell Vial',
    tier: 'Rare',
    type: 'Healer',
    description: 'Water drawn from a pool that only appears under full moons.',
    abilities: [
      'Heals 4 hearts instantly',
      'Grants Absorption II for 30 seconds',
      'Enhanced healing under moonlight'
    ]
  },

  // ── ORNATE ──────────────────────────────────────────────
  {
    id: 19,
    name: 'Gilded Rapier',
    tier: 'Ornate',
    type: 'Weapon',
    description: 'An ornate blade with gold filigree. Style meets substance.',
    abilities: [
      'Critical hits deal 3x damage',
      'Parry: right-click to deflect projectiles',
      'Lunge: dash forward 5 blocks on sneak-attack',
      '+2 Dream Rate while equipped'
    ]
  },
  {
    id: 20,
    name: 'Astral Plate',
    tier: 'Ornate',
    type: 'Armor',
    description: 'Armor etched with constellations that shift with the night sky.',
    abilities: [
      'Protection IV at night',
      'Starlight Shield: absorbs one lethal hit per night',
      '2-piece: Night Vision',
      '4-piece: +5 Dream Rate'
    ]
  },
  {
    id: 21,
    name: 'Whispering Amulet',
    tier: 'Ornate',
    type: 'Accessory',
    description: 'Murmurs secrets of nearby ores and hidden rooms.',
    abilities: [
      'Highlights ores within 12 blocks through walls',
      'Reveals hidden structure rooms',
      'Passive +1 Dream Rate'
    ]
  },
  {
    id: 22,
    name: 'Band of Seasons',
    tier: 'Ornate',
    type: 'Ring',
    description: 'A ring that shifts color with the in-game season.',
    abilities: [
      'Spring: Regeneration I',
      'Summer: Fire Resistance',
      'Autumn: Luck II',
      'Winter: Frost Aura (slows nearby enemies)'
    ]
  },
  {
    id: 23,
    name: 'Phoenix Tears',
    tier: 'Ornate',
    type: 'Healer',
    description: 'Tears crystallized from a dying phoenix. Warm to the touch.',
    abilities: [
      'Revives one nearby player from death',
      'Restores 6 hearts to all allies within 16 blocks',
      'Applies Fire Resistance for 1 minute',
      '5-minute cooldown'
    ]
  },
  {
    id: 24,
    name: 'Thornweave Armor',
    tier: 'Ornate',
    type: 'Armor',
    description: 'Living armor that grows thorns when threatened.',
    abilities: [
      'Thorns V passively',
      'Absorbs 30% of melee damage as health',
      'Roots nearby enemies when below 3 hearts',
      '2-piece: Poison immunity'
    ]
  },

  // ── EXQUISITE ───────────────────────────────────────────
  {
    id: 25,
    name: 'Fireforged Chestplate',
    tier: 'Exquisite',
    type: 'Armor',
    description: 'Part of the Phoenix Rebirth set. Burns with an inner fire.',
    abilities: [
      'Phoenix Rebirth: auto-revive on death once per life',
      '2-piece: Fire Resistance',
      '4-piece: Strength I passively'
    ]
  },
  {
    id: 26,
    name: 'Void Ring',
    tier: 'Exquisite',
    type: 'Ring',
    description: 'A ring forged in the void itself.',
    abilities: ['Resistance I', 'Fire Immunity', 'Slow Falling — all passive']
  },
  {
    id: 27,
    name: 'Endless Ambrosia',
    tier: 'Exquisite',
    type: 'Healer',
    description: 'A divine healer that restores all nearby allies.',
    abilities: [
      'Fully restores health within 32 blocks',
      'Long cooldown',
      "Healer's Oath applies"
    ]
  },
  {
    id: 28,
    name: 'Stormcaller Halberd',
    tier: 'Exquisite',
    type: 'Weapon',
    description: 'A polearm that commands the sky. Thunder follows its swing.',
    abilities: [
      'Summons lightning on every 5th hit',
      'Charged Strike: hold attack for AoE thunder slam',
      'Grants Channeling to all nearby allies',
      'Passive +3 Dream Rate',
      'Storm Shield: lightning immunity'
    ]
  },
  {
    id: 29,
    name: 'Mirage Cowl',
    tier: 'Exquisite',
    type: 'Armor',
    description: 'A shimmering cloak that bends light around the wearer.',
    abilities: [
      'Invisibility for 5 seconds after taking damage',
      'Afterimage: leaves a decoy when dodging',
      '2-piece: Speed II',
      '4-piece: +5 Dream Rate permanently'
    ]
  },
  {
    id: 30,
    name: 'Celestial Compass',
    tier: 'Exquisite',
    type: 'Accessory',
    description: 'Points not north, but toward your destiny.',
    abilities: [
      'Guides you to the nearest World Event',
      'Reveals all structures within 256 blocks',
      'Passive Luck III',
      '+5 Dream Rate while exploring new chunks'
    ]
  },

  // ── MYTHICAL ────────────────────────────────────────────
  {
    id: 31,
    name: 'Dragon Fan',
    tier: 'Mythical',
    type: 'Weapon',
    description:
      'A mythical sword of devastating power with seven distinct abilities.',
    abilities: [
      'Launches mobs into the sky',
      'Breathes fire in a 15-block line',
      'Deals more damage the closer you are to death',
      'Chain lightning on hit',
      'Lifesteal',
      'Pulls enemies toward you',
      'Permanently raises Dream Rate when worn'
    ]
  },
  {
    id: 32,
    name: 'Butterfly Wings',
    tier: 'Mythical',
    type: 'Accessory',
    description: 'Delicate wings that carry a deadly secret.',
    abilities: [
      'Chaos Wings: 5% chance to instantly kill any enemy on hit',
      'Passive evasion boost'
    ]
  },
  {
    id: 33,
    name: 'Crown of the Dreamer',
    tier: 'Mythical',
    type: 'Armor',
    description:
      'A crown that exists between waking and sleep. It hums with raw Dream energy.',
    abilities: [
      '+10 Dream Rate permanently',
      'Dream Shield: immune to all damage for 3 seconds every minute',
      'Aura of Dreams: all nearby players gain +3 Dream Rate',
      'Nightmare Banish: instantly removes Night Terrors',
      'Undying Will: prevents death once, then shatters (repairs at dawn)'
    ]
  },
  {
    id: 34,
    name: 'The Worldseed',
    tier: 'Mythical',
    type: 'Ring',
    description:
      'A ring containing a seed of pure creation. Reality bends around it.',
    abilities: [
      'Terraforms a 16-block area into a chosen biome',
      'Passive +8 Dream Rate',
      'All seasons grant their bonus simultaneously',
      'World Events have double rewards while worn',
      'The final ring — only one can exist per world'
    ]
  },
  {
    id: 35,
    name: 'Tears of Eternity',
    tier: 'Mythical',
    type: 'Healer',
    description:
      'Crystallized tears of a god who wept for the mortal world. They never run dry.',
    abilities: [
      'Fully heals all players on the server',
      'Grants Absorption V for 2 minutes to all allies',
      'Revives all dead players within 64 blocks',
      'Cleanses all negative effects server-wide',
      'One use per real-life day — the cooldown is cosmic'
    ]
  },
  {
    id: 36,
    name: 'Abyssal Scythe',
    tier: 'Mythical',
    type: 'Weapon',
    description:
      'A scythe forged from the bones of the Abyss itself. It reaps more than wheat.',
    abilities: [
      'Cleave: hits all enemies in a 180-degree arc',
      'Soul Harvest: killed mobs restore 1 heart each',
      'Void Step: teleport 10 blocks in facing direction',
      'Death Mark: marked enemies take 2x damage for 10 seconds',
      'Reaper Form: transform into a shadow for 15 seconds (invulnerable, +50% speed)',
      'Permanently raises Dream Rate when worn'
    ]
  },

  // ── MORE VARIETY ────────────────────────────────────────
  {
    id: 37,
    name: 'Sandstone Gauntlets',
    tier: 'Common',
    type: 'Armor',
    description: 'Heavy gloves made from desert sandstone. They crunch when you clench.',
    abilities: ['Punch damage +1', 'Mining speed +5% in deserts']
  },
  {
    id: 38,
    name: 'Echo Flute',
    tier: 'Uncommon',
    type: 'Accessory',
    description: 'A flute carved from ancient coral. Its melody lingers.',
    abilities: [
      'Calms hostile mobs in a 10-block radius for 5 seconds',
      'Attracts passive animals from 32 blocks away'
    ]
  },
  {
    id: 39,
    name: 'Blightborn Mace',
    tier: 'Rare',
    type: 'Weapon',
    description: 'A mace dripping with swamp corruption. Nothing it touches stays clean.',
    abilities: [
      'Applies Wither I on hit',
      'Splash damage in a 3-block radius',
      'Bonus damage in swamp biomes'
    ]
  },
  {
    id: 40,
    name: 'Prism Lens',
    tier: 'Ornate',
    type: 'Accessory',
    description: 'A crystalline lens that fractures light into hidden truths.',
    abilities: [
      'See through walls for 3 seconds (30s cooldown)',
      'Highlights all entities in a 24-block radius',
      'Passive +2 Dream Rate'
    ]
  },
  {
    id: 41,
    name: 'Tidecaller Staff',
    tier: 'Exquisite',
    type: 'Weapon',
    description: 'A coral staff that commands the tides. The ocean answers.',
    abilities: [
      'Summons a water wall that blocks projectiles',
      'Tidal Surge: launches a wave that pushes all mobs 20 blocks',
      'Grants Water Breathing and Dolphins Grace passively',
      '+4 Dream Rate in ocean biomes'
    ]
  },
  {
    id: 42,
    name: 'Ironbark Shield',
    tier: 'Uncommon',
    type: 'Armor',
    description: 'A shield grown from a sacred oak. It regrows overnight.',
    abilities: [
      'Blocks 40% of incoming damage',
      'Self-repairs 1 durability per minute',
      'Thorns I when blocking'
    ]
  }
]

export const TIERS: Tier[] = [
  'Common',
  'Uncommon',
  'Rare',
  'Ornate',
  'Exquisite',
  'Mythical'
]
export const TYPES: ArtifactType[] = [
  'Weapon',
  'Armor',
  'Accessory',
  'Ring',
  'Healer'
]

export const TIER_COLORS: Record<Tier, string> = {
  Common: 'text-stone-400 border-stone-600 bg-stone-900/40',
  Uncommon: 'text-green-400 border-green-700 bg-green-950/40',
  Rare: 'text-blue-400 border-blue-700 bg-blue-950/40',
  Ornate: 'text-purple-400 border-purple-700 bg-purple-950/40',
  Exquisite: 'text-orange-400 border-orange-700 bg-orange-950/40',
  Mythical: 'text-yellow-400 border-yellow-600 bg-yellow-950/40'
}

export const TIER_BADGE: Record<Tier, string> = {
  Common: 'bg-stone-800 text-stone-300',
  Uncommon: 'bg-green-950 text-green-400',
  Rare: 'bg-blue-950 text-blue-400',
  Ornate: 'bg-purple-950 text-purple-400',
  Exquisite: 'bg-orange-950 text-orange-400',
  Mythical: 'bg-yellow-950 text-yellow-400'
}

export const TYPE_ICONS: Record<ArtifactType, string> = {
  Weapon: '\u2694\uFE0F',
  Armor: '\uD83D\uDEE1\uFE0F',
  Accessory: '\uD83D\uDC8E',
  Ring: '\uD83D\uDCAD',
  Healer: '\u2764\uFE0F\u200D\uD83E\uDE79'
}
