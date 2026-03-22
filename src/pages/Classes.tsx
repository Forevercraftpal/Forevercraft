import { useState } from 'react'
import { classes } from '../data/classes'
import PageHero from '../components/layout/PageHero'
import ScrollReveal from '../components/effects/ScrollReveal'
import Spoiler from '../components/ui/Spoiler'

export default function Classes() {
  const [selectedId, setSelectedId] = useState<string | null>(null)
  const selected = classes.find(c => c.id === selectedId)

  return (
    <div className="bg-stone-950 text-stone-200 min-h-screen">
      <PageHero
        title="CLASSES"
        badge="CHOOSE YOUR PATH"
        subtitle="14 weapon classes. From shadowy Rogues to the secret Dual Swordsman."
        particleColor="rgba(96, 165, 250, 0.4)"
      />

      {/* System Overview */}
      <div className="max-w-4xl mx-auto px-6 py-12">
        <ScrollReveal>
          <div className="font-['Crimson_Pro'] text-lg text-stone-400 text-center mb-8 max-w-2xl mx-auto">
            <p>
              Classes define your combat identity. Each class transforms how you fight —
              changing your weapon type, granting unique abilities, and opening a path to
              one of the 14 Spirit Weapons. Some classes have subclasses that shift the playstyle further.
            </p>
          </div>
        </ScrollReveal>

        <ScrollReveal delay={100}>
          <Spoiler label="How classes work under the hood...">
            <div className="space-y-3 font-['Crimson_Pro'] text-sm text-stone-400">
              <p><span className="text-yellow-500 font-semibold">Activation:</span> Equip the class weapon type in your mainhand. The class activates automatically based on what you're holding.</p>
              <p><span className="text-yellow-500 font-semibold">Dual-Wield Classes:</span> Rogue (daggers), Berserker (axes), Dancer (fans), Dual Swordsman (swords) require weapons in both hands. They trade armor for damage.</p>
              <p><span className="text-yellow-500 font-semibold">Shield Classes:</span> Knight (sword+shield), Hoplite (trident+shield), Sentinel (mace+shield) gain defensive bonuses from the offhand shield.</p>
              <p><span className="text-yellow-500 font-semibold">Spirit Weapons:</span> Each class has a corresponding Spirit Weapon dropped by a specific raid boss at 5%. These are the ultimate expression of the class.</p>
              <p><span className="text-yellow-500 font-semibold">Twin Weapons:</span> 7 classes can obtain a second spirit weapon via Dream Storm Crystal (1% drop from Castle floor 25+). Requires Mythical tier + Spirit Tome quest 50.</p>
              <p><span className="text-yellow-500 font-semibold">Solo Boost:</span> Classes without twins get a 25% effectiveness boost from the Crystal instead, reaching 150% at Spirit tier.</p>
            </div>
          </Spoiler>
        </ScrollReveal>
      </div>

      <div className="max-w-7xl mx-auto px-6 py-16">
        {/* Class Grid */}
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-7 gap-3 mb-12">
          {classes.map(cls => (
            <button
              key={cls.id}
              onClick={() => setSelectedId(selectedId === cls.id ? null : cls.id)}
              className={`relative rounded border p-3 text-center transition-all duration-300 hover:scale-105 ${
                selectedId === cls.id
                  ? 'border-yellow-500 bg-yellow-950/30 shadow-[0_0_20px_rgba(234,179,8,0.2)]'
                  : 'border-stone-700 bg-stone-900/50 hover:border-stone-600'
              }`}
            >
              {cls.isSecret && (
                <div className="absolute -top-1 -right-1 bg-purple-600 text-[0.3rem] font-['Press_Start_2P'] text-white px-1.5 py-0.5 rounded">
                  SECRET
                </div>
              )}
              <div
                className="w-8 h-8 rounded-full mx-auto mb-2 flex items-center justify-center text-lg"
                style={{ backgroundColor: `${cls.color}20`, border: `2px solid ${cls.color}40` }}
              >
                {cls.weaponType.includes('Dagger') ? '🗡️' :
                 cls.weaponType.includes('Axe') ? '🪓' :
                 cls.weaponType.includes('Bow') ? '🏹' :
                 cls.weaponType.includes('Cross') ? '🎯' :
                 cls.weaponType.includes('Spear') ? '🔱' :
                 cls.weaponType.includes('Fan') ? '💨' :
                 cls.weaponType.includes('Trident') ? '🔱' :
                 cls.weaponType.includes('Mace') ? '🔨' :
                 cls.weaponType.includes('Shield') ? '🛡️' :
                 cls.weaponType.includes('Staff') ? '🪄' :
                 cls.weaponType.includes('Sword') ? '⚔️' : '⚔️'}
              </div>
              <p className="font-['Press_Start_2P'] text-[0.38rem] text-stone-300 leading-relaxed">
                {cls.name.toUpperCase()}
              </p>
              <p className="font-['Crimson_Pro'] text-[0.65rem] text-stone-500 mt-0.5">
                {cls.archetype}
              </p>
            </button>
          ))}
        </div>

        {/* Selected Class Detail */}
        {selected && (
          <ScrollReveal>
            <div
              className="rounded-lg border p-6 md:p-8 transition-all"
              style={{
                borderColor: `${selected.color}40`,
                background: `linear-gradient(135deg, ${selected.color}08 0%, transparent 60%)`,
              }}
            >
              <div className="flex flex-col md:flex-row gap-8">
                {/* Left: Info */}
                <div className="flex-1">
                  <div className="flex items-center gap-3 mb-1">
                    <h2 className="font-['Press_Start_2P'] text-xl" style={{ color: selected.color }}>
                      {selected.name}
                    </h2>
                    {selected.isSecret && (
                      <span className="font-['Press_Start_2P'] text-[0.35rem] bg-purple-600 text-white px-2 py-1 rounded">
                        SECRET CLASS
                      </span>
                    )}
                  </div>
                  <p className="font-['Press_Start_2P'] text-[0.4rem] text-stone-500 tracking-widest mb-4">
                    {selected.archetype.toUpperCase()} · {selected.weaponType.toUpperCase()}
                  </p>

                  <p className="font-['Crimson_Pro'] text-stone-300 text-lg mb-6">
                    {selected.coreMechanic}
                  </p>

                  {/* Subclass links */}
                  {(selected.subclass || selected.subclassOf) && (
                    <div className="mb-6 bg-stone-900/60 rounded border border-stone-800/50 p-3">
                      {selected.subclassOf && (
                        <p className="font-['Crimson_Pro'] text-stone-400 text-sm">
                          Subclass of <span className="text-yellow-500 font-semibold">{selected.subclassOf}</span>
                        </p>
                      )}
                      {selected.subclass && (
                        <p className="font-['Crimson_Pro'] text-stone-400 text-sm">
                          Has subclass: <span className="text-yellow-500 font-semibold">{selected.subclass}</span>
                        </p>
                      )}
                    </div>
                  )}

                  {/* Strengths / Weaknesses */}
                  <div className="grid md:grid-cols-2 gap-4 mb-6">
                    <div>
                      <h3 className="font-['Press_Start_2P'] text-[0.4rem] text-green-500 tracking-widest mb-2">STRENGTHS</h3>
                      {selected.strengths.map(s => (
                        <p key={s} className="font-['Crimson_Pro'] text-stone-400 text-sm flex gap-2">
                          <span className="text-green-600">+</span> {s}
                        </p>
                      ))}
                    </div>
                    <div>
                      <h3 className="font-['Press_Start_2P'] text-[0.4rem] text-red-500 tracking-widest mb-2">WEAKNESSES</h3>
                      {selected.weaknesses.map(w => (
                        <p key={w} className="font-['Crimson_Pro'] text-stone-400 text-sm flex gap-2">
                          <span className="text-red-600">−</span> {w}
                        </p>
                      ))}
                    </div>
                  </div>
                </div>

                {/* Right: Abilities */}
                <div className="md:w-[340px]">
                  <h3 className="font-['Press_Start_2P'] text-[0.45rem] text-yellow-600 tracking-widest mb-3">ABILITIES</h3>
                  <div className="space-y-3">
                    {selected.abilities.map(a => (
                      <div key={a.name} className="bg-stone-900/60 rounded border border-stone-800/50 p-3">
                        <p className="font-['Press_Start_2P'] text-[0.4rem] text-stone-200 mb-1">{a.name}</p>
                        <p className="font-['Crimson_Pro'] text-stone-400 text-sm">{a.description}</p>
                      </div>
                    ))}
                  </div>

                  {/* Spirit Weapon */}
                  <div className="mt-4 bg-purple-950/20 border border-purple-800/30 rounded p-3">
                    <p className="font-['Press_Start_2P'] text-[0.35rem] text-purple-400 tracking-widest mb-1">SPIRIT WEAPON</p>
                    <p className="font-['Crimson_Pro'] text-stone-300">
                      {selected.spiritWeapon}
                    </p>
                    <p className="font-['Crimson_Pro'] text-stone-500 text-sm">
                      Dropped by {selected.raidBoss}
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </ScrollReveal>
        )}

        {/* No selection prompt */}
        {!selected && (
          <div className="text-center py-12">
            <p className="font-['Press_Start_2P'] text-[0.5rem] text-stone-600">
              SELECT A CLASS ABOVE TO VIEW DETAILS
            </p>
          </div>
        )}
      </div>
    </div>
  )
}
