import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'

const MASTERY_CATEGORIES = [
  { name: 'Baking', icon: '🍞', description: 'Breads, pastries, and pies. Stamina and saturation focused.' },
  { name: 'Brewing', icon: '🧪', description: 'Potions, elixirs, and tonics. Status effects and buffs.' },
  { name: 'Grilling', icon: '🔥', description: 'Meats and skewers. Attack power and strength buffs.' },
  { name: 'Stewing', icon: '🍲', description: 'Soups and stews. Health regeneration and defense.' },
  { name: 'Confections', icon: '🍬', description: 'Sweets and candy. Speed and luck bonuses.' },
  { name: 'Preserving', icon: '🫙', description: 'Pickled and dried goods. Long-lasting, travel-friendly.' },
  { name: 'Exotic', icon: '✨', description: 'Rare recipes from dungeon loot. Powerful unique effects.' },
]

const SEASONAL_RECIPES = [
  { season: 'Autumn', color: 'text-amber-400', border: 'border-amber-700/40', bg: 'from-amber-900/20 to-amber-950/5', recipes: ['Harvest Pie', 'Spiced Cider', 'Pumpkin Stew', 'Maple Glazed Ribs'] },
  { season: 'Winter', color: 'text-blue-400', border: 'border-blue-700/40', bg: 'from-blue-900/20 to-blue-950/5', recipes: ['Frosted Cake', 'Hot Cocoa', 'Snowberry Jam', 'Hearth Roast'] },
  { season: 'Spring', color: 'text-green-400', border: 'border-green-700/40', bg: 'from-green-900/20 to-green-950/5', recipes: ['Blossom Tea', 'Garden Salad', 'Honey Bread', 'Berry Tart'] },
  { season: 'Summer', color: 'text-yellow-400', border: 'border-yellow-700/40', bg: 'from-yellow-900/20 to-yellow-950/5', recipes: ['Golden Nectar', 'Sunfruit Sorbet', 'Flame-Grilled Fish', 'Citrus Fizz'] },
]

const PET_TREATS = [
  { tier: 'Basic', color: 'text-stone-400', effect: '+5 pet XP' },
  { tier: 'Quality', color: 'text-green-400', effect: '+15 pet XP' },
  { tier: 'Premium', color: 'text-blue-400', effect: '+30 pet XP, small stat boost' },
  { tier: 'Gourmet', color: 'text-purple-400', effect: '+50 pet XP, medium stat boost' },
  { tier: 'Legendary', color: 'text-yellow-400', effect: '+100 pet XP, large stat boost, cosmetic sparkle' },
]

const FEATURES = [
  {
    title: 'Campfire GUI',
    description: 'Interact with any campfire to open the cooking interface. Combine up to 4 ingredients to discover new recipes. Experimentation is rewarded.',
  },
  {
    title: 'Pantry Storage',
    description: 'A dedicated inventory for ingredients and prepared meals. Access your pantry from any campfire. Never lose your cooking materials.',
  },
  {
    title: 'Well-Fed Timer',
    description: 'Eating prepared meals grants the Well-Fed buff. Timer stacks with higher-quality food. Provides passive stat bonuses while active.',
  },
  {
    title: 'Culinary Skill Tree',
    description: 'A dedicated skill tree that synergizes with cooking. Unlock faster cook times, bonus effects, recipe discovery bonuses, and pantry expansions.',
  },
]

export default function Cooking() {
  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="COOKING"
        badge="THE KITCHEN"
        subtitle="A full culinary system with campfire crafting, seasonal recipes, pet treats, and a mastery progression."
        particleColor="#f59e0b"
      />

      {/* Core Features */}
      <section className="max-w-6xl mx-auto px-6 py-16">
        <ScrollReveal>
          <div className="text-center mb-12">
            <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">HOW IT WORKS</h2>
          </div>
        </ScrollReveal>

        <div className="grid md:grid-cols-2 gap-5 mb-16">
          {FEATURES.map((feat, i) => (
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
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">MASTERY CATEGORIES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                Seven branches of culinary expertise. Master them all to become a true Chef.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid grid-cols-2 md:grid-cols-4 gap-4 max-w-3xl mx-auto">
            {MASTERY_CATEGORIES.map((cat, i) => (
              <ScrollReveal key={cat.name} delay={i * 60}>
                <div className="text-center rounded-lg border border-stone-800 bg-stone-900/40 p-4 h-full">
                  <div className="text-2xl mb-2">{cat.icon}</div>
                  <h3 className="font-['Press_Start_2P'] text-[0.45rem] text-yellow-400 mb-2">{cat.name}</h3>
                  <p className="font-['Crimson_Pro'] text-xs text-stone-500">{cat.description}</p>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>

      {/* Seasonal Recipes */}
      <section className="border-t border-yellow-900/20">
        <div className="max-w-6xl mx-auto px-6 py-16">
          <ScrollReveal>
            <div className="text-center mb-10">
              <h2 className="font-['Press_Start_2P'] text-sm text-yellow-400 mb-3">SEASONAL RECIPES</h2>
              <p className="font-['Crimson_Pro'] text-lg text-stone-400">
                16 exclusive recipes — 4 per season. Only available during their respective season.
              </p>
            </div>
          </ScrollReveal>

          <div className="grid md:grid-cols-2 gap-5 max-w-3xl mx-auto">
            {SEASONAL_RECIPES.map((s, i) => (
              <ScrollReveal key={s.season} delay={i * 100}>
                <div className={`rounded-lg border ${s.border} bg-gradient-to-br ${s.bg} p-5`}>
                  <h3 className={`font-['Press_Start_2P'] text-[0.55rem] ${s.color} mb-3`}>{s.season}</h3>
                  <div className="space-y-1.5">
                    {s.recipes.map(recipe => (
                      <div key={recipe} className="flex items-center gap-2">
                        <span className={`text-[0.4rem] ${s.color}`}>&#9670;</span>
                        <span className="font-['Crimson_Pro'] text-sm text-stone-300">{recipe}</span>
                      </div>
                    ))}
                  </div>
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
                Cook treats for your companions. Five tiers of increasing potency.
              </p>
            </div>
          </ScrollReveal>

          <div className="max-w-xl mx-auto space-y-3">
            {PET_TREATS.map((treat, i) => (
              <ScrollReveal key={treat.tier} delay={i * 60}>
                <div className="flex items-center justify-between rounded-lg border border-stone-800 bg-stone-900/30 px-5 py-3">
                  <span className={`font-['Press_Start_2P'] text-[0.5rem] ${treat.color}`}>{treat.tier}</span>
                  <span className="font-['Crimson_Pro'] text-sm text-stone-400">{treat.effect}</span>
                </div>
              </ScrollReveal>
            ))}
          </div>
        </div>
      </section>
    </div>
  )
}
