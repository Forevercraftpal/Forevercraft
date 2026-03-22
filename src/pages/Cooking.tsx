import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

const MASTERY_CATEGORIES = [
  { name: 'Combat Cuisine', icon: '⚔️', color: '#EF5350', description: 'Meals that boost attack power, defense, and combat readiness.' },
  { name: 'Mining Meals', icon: '⛏️', color: '#FFB74D', description: 'Food that enhances mining speed, ore detection, and underground survival.' },
  { name: 'Fortune Foods', icon: '🍀', color: '#FDD835', description: 'Lucky dishes that boost Dream Rate and loot quality temporarily.' },
  { name: 'Wayfarer Fare', icon: '🧭', color: '#66BB6A', description: 'Travel food for speed, stamina, and exploration bonuses.' },
  { name: 'Delicacies', icon: '✨', color: '#AB47BC', description: 'Rare gourmet dishes with powerful saturation and unique effects.' },
  { name: 'Seasonal Specials', icon: '🌸', color: '#4FC3F7', description: 'Recipes that rotate with the 4 seasons. Only available during their season.' },
  { name: 'Treats', icon: '🍪', color: '#F9A8D4', description: 'Companion treats that grant pet XP and strengthen your bond.' },
  { name: 'Laborer Rations', icon: '🥖', color: '#8D6E63', description: 'Hearty food for laborers on expeditions. Boosts expedition efficiency.' },
  { name: 'Feast Platters', icon: '🍖', color: '#FF7043', description: 'Large shared meals that buff all nearby players. Party food.' },
  { name: 'Preservation', icon: '🫙', color: '#78909C', description: 'Long-lasting preserved foods. Never spoil, perfect for long journeys.' },
  { name: 'Spirit Cuisine', icon: '👻', color: '#CE93D8', description: 'Endgame recipes requiring rare spirit ingredients. Most powerful effects.' },
]

const MASTERY_TIERS = [
  { count: 10, title: 'Apprentice', color: 'text-green-400' },
  { count: 25, title: 'Journeyman', color: 'text-cyan-400' },
  { count: 50, title: 'Expert', color: 'text-amber-400' },
  { count: 100, title: 'Master Chef', color: 'text-fuchsia-400' },
]

const SEASONAL_RECIPES = [
  { season: 'Autumn', color: 'text-amber-400', border: 'border-amber-700/40', bg: 'from-amber-900/20 to-amber-950/5', count: 4 },
  { season: 'Winter', color: 'text-blue-400', border: 'border-blue-700/40', bg: 'from-blue-900/20 to-blue-950/5', count: 4 },
  { season: 'Spring', color: 'text-green-400', border: 'border-green-700/40', bg: 'from-green-900/20 to-green-950/5', count: 4 },
  { season: 'Summer', color: 'text-yellow-400', border: 'border-yellow-700/40', bg: 'from-yellow-900/20 to-yellow-950/5', count: 4 },
]

const PET_TREATS = [
  { tier: 'Companion Treat', color: 'text-stone-400' },
  { tier: 'Meadow Biscuit', color: 'text-green-400' },
  { tier: 'Honey Cake', color: 'text-cyan-400' },
  { tier: 'Savory Bone Broth', color: 'text-purple-400' },
  { tier: 'Golden Morsel', color: 'text-amber-400' },
  { tier: 'Spirit Treat', color: 'text-fuchsia-400' },
]

export default function Cooking() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="COOKING"
        badge="THE KITCHEN"
        subtitle="63 functions. 11 mastery categories. Campfire crafting, seasonal recipes, pet treats, and a full mastery progression."
        particleColor="#f59e0b"
      />

      {/* How It Works */}
      <section className="max-w-6xl mx-auto px-6 py-16">
        <ScrollReveal>
          <div className="text-center mb-12">
            <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">HOW IT WORKS</h2>
          </div>
        </ScrollReveal>

        <div className="grid md:grid-cols-2 gap-5 mb-16">
          {[
            { title: 'Campfire GUI', description: 'Right-click any campfire to open the cooking interface. Combine ingredients to create meals with custom buffs.' },
            { title: 'Pantry Storage', description: '26-function dedicated storage for ingredients and prepared meals. Access from any campfire. 8 categories with barrel labels and one-button sorting.' },
            { title: 'Well-Fed Timer', description: 'Eating prepared meals grants Well-Fed buff with passive stat bonuses. Duration scales with the Culinary skill tree (+10% per 5 levels).' },
            { title: 'Culinary Skill Tree', description: 'One of the 14 Advantage Trees. +10% Well-Fed duration per 5 levels. Leveled by meals cooked (50 to 1,250).' },
          ].map((feat, i) => (
            <ScrollReveal key={feat.title} delay={i * 80}>
              <div className="rounded-lg border border-stone-800 bg-stone-900/30 p-5 h-full">
                <h3 className="font-['Press_Start_2P'] text-[0.55rem] text-yellow-400 mb-2">{feat.title}</h3>
                <p className="font-['Crimson_Pro'] text-sm text-stone-400">{feat.description}</p>
              </div>
            </ScrollReveal>
          ))}
        </div>
      </section>

      {/* Mastery Categories */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">11 MASTERY CATEGORIES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                Each category has its own mastery progression. Cook your way to Master Chef.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 max-w-4xl mx-auto">
            {MASTERY_CATEGORIES.map((cat, i) => (
              <ScrollReveal key={cat.name} delay={i * 50}>
                <div className="text-center rounded-lg border border-stone-800 bg-stone-900/40 p-4 h-full">
                  <div className="text-2xl mb-2">{cat.icon}</div>
                  <h3 className="font-['Press_Start_2P'] text-[0.4rem] mb-2" style={{ color: cat.color }}>{cat.name}</h3>
                  <p className="font-['Crimson_Pro'] text-xs text-stone-500">{cat.description}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>

          {/* Mastery Tiers */}
          <ScrollReveal delay={500}>
            <div className="mt-8 max-w-xl mx-auto">
              <Spoiler label="Mastery milestones and progression thresholds...">
                <div className="space-y-2">
                  {MASTERY_TIERS.map(t => (
                    <div key={t.title} className="flex items-center justify-between">
                      <span className={`font-['Press_Start_2P'] text-[0.4rem] ${t.color}`}>{t.title}</span>
                      <span className="font-['Crimson_Pro'] text-sm text-stone-500">{t.count} meals in category</span>
                    </div>
                  ))}
                </div>
              </Spoiler>
            </div>
          </ScrollReveal>
        </div>
      </section>

      {/* Seasonal Recipes */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">SEASONAL RECIPES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                16 exclusive recipes — 4 per season. Only available during their season.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid grid-cols-2 md:grid-cols-4 gap-4 max-w-3xl mx-auto">
            {SEASONAL_RECIPES.map((s, i) => (
              <ScrollReveal key={s.season} delay={i * 100}>
                <div className={`rounded-lg border ${s.border} bg-gradient-to-br ${s.bg} p-5 text-center`}>
                  <h3 className={`font-['Press_Start_2P'] text-[0.55rem] ${s.color} mb-2`}>{s.season}</h3>
                  <p className="font-['Crimson_Pro'] text-stone-400 text-sm">{s.count} exclusive recipes</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Pet Treats */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">PET TREATS</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                Cook treats for your companions. Six tiers of treats to build your bond.
              </p>
            </div>
          </ScrollReveal>

          <div className="max-w-xl mx-auto space-y-3">
            {PET_TREATS.map((treat, i) => (
              <ScrollReveal key={treat.tier} delay={i * 60}>
                <div className="flex items-center justify-between rounded-lg border border-stone-800 bg-stone-900/30 px-5 py-3">
                  <span className={`font-['Press_Start_2P'] text-[0.45rem] ${treat.color}`}>{treat.tier}</span>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>
    </div>
  )
}
