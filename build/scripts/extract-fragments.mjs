#!/usr/bin/env node
/**
 * Fragment Extractor for Forevercraft Modular Build System
 * Parses tick.mcfunction, init.mcfunction, and on_join.mcfunction
 * into per-module fragment files based on section headers.
 *
 * Usage: node extract-fragments.mjs <datapack-path> <output-dir>
 */

import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'fs'
import { join, dirname } from 'path'

const DATAPACK = process.argv[2] || '/Users/Josep/Library/Application Support/minecraft/saves/Testing/datapacks/Forevercraft'
const OUTPUT = process.argv[3] || join(dirname(new URL(import.meta.url).pathname), '..', 'fragments')

// Module assignment map: section header keywords → module ID
const SECTION_TO_MODULE = {
  // Core
  'Early exit': 'core',
  'SLOW DAYLIGHT': 'core',
  'SLEEP SKIP': 'core',
  'WATCHDOG': 'core',
  'RECONNECT DETECTION': 'core',
  'TOMB SYSTEM': 'core',
  'Detect player join': 'core',
  'Notification volume': 'core',
  'Difficulty selection': 'core',
  'Newcomer spirit': 'core',
  'ARCHAEOLOGY BRUSH': 'core',

  // Dream Rate
  'ec.dreams': 'dream-rate',
  'ec.dr_history': 'dream-rate',
  'ec.biome_mastery': 'dream-rate',

  // Crates
  'CRATE ANIMATION': 'crates',
  'Growth Serum': 'crates',

  // Artifacts
  'ARTIFACT WEAPON': 'artifacts',
  'CLASS AFFINITY': 'artifacts',
  'ACCESSORY PASSIVES': 'artifacts',
  'Codex of Everything': 'artifacts',
  'Artifact Codex': 'artifacts',
  'Eternal Codex': 'artifacts',
  'Phoenix Codex': 'artifacts',
  'artifact set detection': 'artifacts',
  'Splendid compass': 'artifacts',
  'Mythical tools': 'artifacts',
  'crop harvest': 'artifacts',
  'looting enchant': 'artifacts',
  'Fortune bonus': 'artifacts',
  'Draconic Gale': 'artifacts',
  'HEALER ARTIFACT': 'artifacts',
  'Titan.*Shroud': 'artifacts',
  'ARROW OF LIGHTNING': 'artifacts',
  'Netherite Core': 'artifacts',
  'ec.codex_tp': 'artifacts',
  'CHRONO SHARD': 'artifacts',
  'Dream Surge': 'artifacts',
  'Codex combine': 'artifacts',
  'Beastlord.*reverse': 'artifacts',
  'ARTIFACT TRANSMUTATION': 'artifacts',
  'RUNEFORGE': 'artifacts',

  // Classes
  'Weapon tick dispatches': 'classes',
  'Archer.*draw': 'classes',
  'Hunter.*aim': 'classes',
  'Spirit artifact system': 'classes',
  'Dual Swordsman': 'classes',

  // Companions
  'EMBERHEART RESPAWN': 'companions',
  'PET COMBAT': 'companions',
  'EVOLVED COMPANION': 'companions',
  'Companion Catalogue': 'companions',
  'COMPANION EVOLUTION.*Disconnect': 'companions',
  'COMPANION CATALOGUE.*Disconnect': 'companions',

  // Quests
  'ec.quest': 'quests',
  'Quest auto-tracker': 'quests',
  'quest preview': 'quests',

  // Combat Instances (Dungeon + Raids + Castle)
  'DUNGEON': 'combat-instances',
  'INFINITE CASTLE': 'combat-instances',
  'SPIRIT RAIDS': 'combat-instances',
  'Dungeon ready-check': 'combat-instances',
  'SPIRIT RAID PROMPT': 'combat-instances',

  // Cooking
  'CAMPFIRE KITCHEN': 'cooking',
  'Cooking Preservation': 'cooking',
  'PANTRY': 'cooking',

  // Housing
  'HEARTHSTONE GUI': 'housing',
  'HOME SNOW GOLEM': 'housing',
  'STASH LABEL': 'housing',
  'HOUSE KEY': 'housing',
  'HOUSING LABORERS': 'housing',

  // Guilds
  'GUILD STONE': 'guilds',
  'GUILD MENU': 'guilds',
  'GUILD SCATTER': 'guilds',
  'GUILD SNOW GOLEM': 'guilds',
  'PILLAGE PVP': 'guilds',

  // Social
  'DUEL SYSTEM': 'social',
  'DUEL.*Intercept': 'social',
  'H2H COMPETITION': 'social',
  'PET DUEL SYSTEM': 'social',
  'PET DUEL.*Disconnect': 'social',
  'CHALLENGE SYSTEM': 'social',

  // Lore
  'LORE DISCOVERY': 'lore',
  'ec.lore_map': 'lore',
  'ec.lore_add': 'lore',

  // Guidestones
  // (guidestones tick via scheduled function, no tick.mcfunction entries)

  // Spirit Weapons
  // (handled under classes for now)

  // CraftForever
  'BIOME NODE': 'craftforever',
  'CRAFTFOREVER CODEX': 'craftforever',
  'SPIRIT TOOLS': 'craftforever',
  'GRAND FORGE': 'craftforever',
  'TRADE TRIALS': 'craftforever',
  'ARTISAN FORGE': 'craftforever',
  'ARTISAN INFO': 'craftforever',
  'RESONANCE STRIKE': 'craftforever',
  'ec.cf_codex': 'craftforever',

  // World Systems
  'WORLD BOSS': 'world-systems',
  'ec.moon': 'world-systems',

  // Professions
  // (professions tick via scheduled function, no tick.mcfunction entries)

  // Bestiary
  'BESTIARY': 'bestiary',

  // Milestones
  'ec.milestones': 'milestones',

  // Cosmetics
  // (cosmetics handled in advantage tree codex)

  // Gacha
  'FOUNTAIN OF ETERNAL': 'gacha',

  // Black Market
  'BLACK MARKET HEIST': 'black-market',
  'Black market quick-sell': 'black-market',

  // Dreaming Realm
  'DREAMING REALM': 'dreaming-realm',

  // Buddy System
  'TAMED ANIMAL BOND': 'buddy-system',
  'ec.bond': 'buddy-system',

  // Forage/Prospect (part of world-systems or standalone)
  'FORAGING BUSH': 'world-systems',
  'ORE NODE': 'world-systems',

  // Advantage
  'ADVANTAGE TREE': 'advantage',
  'ADVANTAGE CODEX': 'advantage',
  'adv.menu': 'advantage',
  'adv.guiclear': 'advantage',
  'bulk claim': 'advantage',
  'auto-collect': 'advantage',
  'advantage triggers': 'advantage',
  'Trophy checks': 'advantage',

  // Reaper
  'REAPER.*Disconnect': 'world-systems',
}

/**
 * Parse a mcfunction file into sections based on comment headers
 */
function parseIntoSections(content) {
  const lines = content.split('\n')
  const sections = []
  let currentSection = { module: 'core', header: 'preamble', lines: [] }

  for (const line of lines) {
    // Check if this line is a section header
    const headerMatch = line.match(/^#\s*===\s*(.+?)\s*===/)
    const commentMatch = !headerMatch && line.match(/^#\s*(.+)/)

    if (headerMatch) {
      // Save current section
      if (currentSection.lines.length > 0) {
        sections.push({ ...currentSection })
      }
      // Start new section
      const header = headerMatch[1]
      const module = identifyModule(header)
      currentSection = { module, header, lines: [line] }
    } else {
      currentSection.lines.push(line)
    }
  }
  // Don't forget the last section
  if (currentSection.lines.length > 0) {
    sections.push(currentSection)
  }

  return sections
}

function identifyModule(header) {
  for (const [pattern, moduleId] of Object.entries(SECTION_TO_MODULE)) {
    if (new RegExp(pattern, 'i').test(header)) {
      return moduleId
    }
  }
  return 'unknown'
}

/**
 * Group sections by module and write fragment files
 */
function writeFragments(sections, filename) {
  const byModule = {}
  for (const section of sections) {
    if (!byModule[section.module]) byModule[section.module] = []
    byModule[section.module].push(section)
  }

  for (const [moduleId, moduleSections] of Object.entries(byModule)) {
    const dir = join(OUTPUT, moduleId)
    if (!existsSync(dir)) mkdirSync(dir, { recursive: true })

    const content = moduleSections
      .map(s => s.lines.join('\n'))
      .join('\n\n')

    writeFileSync(join(dir, `${filename}_fragment.mcfunction`), content)
    console.log(`  ${moduleId}/${filename}_fragment.mcfunction (${moduleSections.length} sections, ${content.split('\n').length} lines)`)
  }

  // Report unknowns
  if (byModule.unknown) {
    console.log(`\n  ⚠ UNKNOWN sections in ${filename}:`)
    for (const s of byModule.unknown) {
      console.log(`    - "${s.header}" (${s.lines.length} lines)`)
    }
  }
}

// Main
console.log('Forevercraft Fragment Extractor\n')

const tickPath = join(DATAPACK, 'data/evercraft/function/tick.mcfunction')
const initPath = join(DATAPACK, 'data/evercraft/function/init.mcfunction')

console.log('Extracting tick.mcfunction fragments...')
const tickContent = readFileSync(tickPath, 'utf-8')
const tickSections = parseIntoSections(tickContent)
writeFragments(tickSections, 'tick')

console.log('\nExtracting init.mcfunction fragments...')
const initContent = readFileSync(initPath, 'utf-8')
const initSections = parseIntoSections(initContent)
writeFragments(initSections, 'init')

// Check for on_join
const onJoinPath = join(DATAPACK, 'data/evercraft/function/dreams/on_join.mcfunction')
if (existsSync(onJoinPath)) {
  console.log('\nExtracting on_join.mcfunction fragments...')
  const onJoinContent = readFileSync(onJoinPath, 'utf-8')
  const onJoinSections = parseIntoSections(onJoinContent)
  writeFragments(onJoinSections, 'on_join')
}

console.log('\n✅ Fragment extraction complete!')
console.log(`Output: ${OUTPUT}`)
