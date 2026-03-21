import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const SEASONS = [
  {
    name: 'Autumn',
    days: '1–16',
    color: 'amber',
    accent: 'from-amber-900/40 to-amber-950/20',
    border: 'border-amber-700/50',
    textColor: 'text-amber-400',
    description: 'Warm amber hues blanket the world. Leaves drift from trees and harvests are plentiful. A time of gathering and preparation.',
    effects: ['Increased crop yields', 'Leaf particle effects', 'Warm ambient lighting'],
  },
  {
    name: 'Winter',
    days: '17–32',
    color: 'blue',
    accent: 'from-blue-900/40 to-blue-950/20',
    border: 'border-blue-700/50',
    textColor: 'text-blue-400',
    description: 'Icy blue cold sweeps across every biome. Snow blankets the landscape and nights grow long. Survival becomes the priority.',
    effects: ['Extended night duration', 'Snowfall in all biomes', 'Icy ambient lighting'],
  },
  {
    name: 'Spring',
    days: '33–48',
    color: 'green',
    accent: 'from-green-900/40 to-green-950/20',
    border: 'border-green-700/50',
    textColor: 'text-green-400',
    description: 'Fresh green life returns to the world. Flowers bloom, animals spawn more frequently, and the land feels renewed.',
    effects: ['Increased animal spawns', 'Flower generation', 'Fresh ambient lighting'],
  },
  {
    name: 'Summer',
    days: '49–64',
    color: 'yellow',
    accent: 'from-yellow-900/40 to-yellow-950/20',
    border: 'border-yellow-700/50',
    textColor: 'text-yellow-400',
    description: 'Golden sunlight bathes everything in warmth. Days stretch long, mobs grow fiercer in the heat, and adventure calls.',
    effects: ['Extended day duration', 'Increased mob aggression', 'Golden ambient lighting'],
  },
]

const WORLD_EVENTS = [
  {
    name: 'Starfall',
    description: 'Meteors streak across the sky, leaving rare fragments scattered across the landscape. Collect them before they fade.',
    color: 'text-purple-400',
    bg: 'from-purple-900/30 to-purple-950/10',
    border: 'border-purple-700/40',
  },
  {
    name: 'The Dreaming',
    description: 'Reality thins and the Dream dimension bleeds through. Phantom creatures appear and Dream Shards crystallize in the open air.',
    color: 'text-indigo-400',
    bg: 'from-indigo-900/30 to-indigo-950/10',
    border: 'border-indigo-700/40',
  },
  {
    name: 'Abyssal Tremor',
    description: 'The ground shakes as deep-dwelling horrors stir beneath the surface. Ancient ores are pushed upward, but so are ancient dangers.',
    color: 'text-red-400',
    bg: 'from-red-900/30 to-red-950/10',
    border: 'border-red-700/40',
  },
  {
    name: 'Aurora Bloom',
    description: 'Shimmering curtains of light dance across the sky. All healing is amplified and passive regeneration accelerates.',
    color: 'text-cyan-400',
    bg: 'from-cyan-900/30 to-cyan-950/10',
    border: 'border-cyan-700/40',
  },
  {
    name: 'Rift Echo',
    description: 'Dimensional rifts tear open, spawning waves of otherworldly enemies. Survive the onslaught for powerful rewards.',
    color: 'text-orange-400',
    bg: 'from-orange-900/30 to-orange-950/10',
    border: 'border-orange-700/40',
  },
]

const MOON_PHASES = [
  { name: 'New Moon', icon: '🌑', effect: '2x patron spawns at night' },
  { name: 'Waxing Crescent', icon: '🌒', effect: 'Standard night cycle' },
  { name: 'First Quarter', icon: '🌓', effect: 'Standard night cycle' },
  { name: 'Waxing Gibbous', icon: '🌔', effect: 'Standard night cycle' },
  { name: 'Full Moon', icon: '🌕', effect: '+0.5 fishing luck bonus' },
  { name: 'Waning Gibbous', icon: '🌖', effect: 'Standard night cycle' },
  { name: 'Last Quarter', icon: '🌗', effect: 'Standard night cycle' },
  { name: 'Waning Crescent', icon: '🌘', effect: 'Standard night cycle' },
]

const HARVEST_MOON = {
  name: 'Harvest Moon',
  chance: '1/8 chance on Full Moon',
  effect: '+1.5 Damage Reduction for the night',
  description: 'A rare crimson moon that empowers defenders. When the Harvest Moon rises, all players gain significant damage reduction until dawn.',
}

export default function Seasons() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="SEASONS & EVENTS"
        badge="THE TURNING YEAR"
        subtitle="A 64-day cycle of shifting seasons, celestial events, and lunar power shapes the world of Forevercraft."
        particleColor="#d97706"
      />

      {/* Season Cycle Overview */}
      <section className="max-w-6xl mx-auto px-6 py-16">
        <ScrollReveal>
          <div className="text-center mb-12">
            <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">THE FOUR SEASONS</h2>
            <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
              Each season lasts 16 in-game days, forming a complete 64-day year cycle. The world transforms with each turning — lighting, particles, spawns, and mechanics all shift to match the season.
            </p>
          </div>
        </ScrollReveal>

        <div className="grid md:grid-cols-2 gap-6">
          {SEASONS.map((season, i) => (
            <ScrollReveal key={season.name} delay={i * 100}>
              <div className={`rounded-lg border ${season.border} bg-gradient-to-br ${season.accent} p-6 h-full`}>
                <div className="flex items-baseline gap-3 mb-3">
                  <h3 className={`font-['Press_Start_2P'] text-xs ${season.textColor}`}>{season.name}</h3>
                  <span className="font-['Crimson_Pro'] text-sm text-stone-500">Days {season.days}</span>
                </div>
                <p className="font-['Crimson_Pro'] text-base text-stone-300 mb-4">{season.description}</p>
                <div className="space-y-1">
                  {season.effects.map(effect => (
                    <div key={effect} className="flex items-center gap-2">
                      <span className={`text-[0.5rem] ${season.textColor}`}>&#9670;</span>
                      <span className="font-['Crimson_Pro'] text-sm text-stone-400">{effect}</span>
                    </div>
                  ))}
                </div>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </section>

      {/* World Events */}
      <section className="border-t border-yellow-900/20 bg-stone-950">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-4">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">WORLD EVENTS</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Five cataclysmic events can strike at any time. A 60-second omen warning gives players time to prepare — or flee.
              </p>
            </div>
            <p className="text-center font-['Press_Start_2P'] text-[0.4rem] text-yellow-700 tracking-widest mb-10">
              60 SECOND OMEN WARNING BEFORE EACH EVENT
            </p>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-5">
            {WORLD_EVENTS.map((event, i) => (
              <ScrollReveal key={event.name} delay={i * 80}>
                <div className={`rounded-lg border ${event.border} bg-gradient-to-br ${event.bg} p-5 h-full flex flex-col`}>
                  <h3 className={`font-['Press_Start_2P'] text-[0.6rem] ${event.color} mb-3`}>{event.name}</h3>
                  <p className="font-['Crimson_Pro'] text-sm text-stone-300 flex-1">{event.description}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Moon Phases */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">MOON PHASES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400 max-w-2xl mx-auto">
                Eight lunar phases cycle through the nights. Certain phases carry powerful gameplay effects.
              </p>
            </div>
          </ScrollReveal>

          <ScrollReveal delay={100}>
            <div className="grid grid-cols-4 md:grid-cols-8 gap-3 mb-10">
              {MOON_PHASES.map(phase => (
                <div
                  key={phase.name}
                  className="text-center rounded-lg border border-stone-800 bg-stone-900/50 p-3"
                >
                  <div className="text-2xl mb-2">{phase.icon}</div>
                  <p className="font-['Press_Start_2P'] text-[0.35rem] text-stone-300 mb-1 leading-relaxed">{phase.name}</p>
                  <p className="font-['Crimson_Pro'] text-[0.7rem] text-stone-500 leading-tight">{phase.effect}</p>
                </div>
              ))}
            </div>
          </ScrollReveal>

          {/* Harvest Moon highlight */}
          <ScrollReveal delay={200}>
            <div className="rounded-lg border border-red-800/50 bg-gradient-to-br from-red-900/20 to-red-950/10 p-6 max-w-xl mx-auto text-center">
              <h3 className="font-['Press_Start_2P'] text-[0.6rem] text-red-400 mb-2">{HARVEST_MOON.name}</h3>
              <p className="font-['Press_Start_2P'] text-[0.35rem] text-red-700 mb-3">{HARVEST_MOON.chance}</p>
              <p className="font-['Crimson_Pro'] text-sm text-stone-300 mb-2">{HARVEST_MOON.description}</p>
              <p className="font-['Press_Start_2P'] text-[0.4rem] text-red-500">{HARVEST_MOON.effect}</p>
            </div>
          </ScrollReveal>
        </div>
      </section>
    </div>
  )
}
