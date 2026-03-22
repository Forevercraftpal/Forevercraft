import { STATS } from '../../data/constants'

export default function Footer() {
  return (
    <footer className="border-t border-yellow-900/30 bg-stone-950">
      <div className="max-w-7xl mx-auto px-6 py-8">
        <div className="flex flex-col md:flex-row items-center justify-between gap-4">
          <div className="flex items-center gap-2">
            <img src="/icon.png" alt="Forevercraft" className="w-7 h-auto" style={{ imageRendering: 'pixelated' }} />
            <span className="font-['Press_Start_2P'] text-[0.45rem] text-metallic-gold tracking-wider">
              FOREVERCRAFT
            </span>
          </div>
          <p className="font-['Press_Start_2P'] text-[0.35rem] text-stone-600 tracking-widest text-center">
            {STATS.totalFiles.toLocaleString()} FILES · {STATS.totalFunctions.toLocaleString()} FUNCTIONS · {STATS.totalLines.toLocaleString()} LINES OF CODE · {STATS.totalSystems} SYSTEMS
          </p>
          <p className="font-['Crimson_Pro'] text-stone-600 text-sm italic">
            Minecraft 1.21.11 · Java Edition
          </p>
        </div>
      </div>
    </footer>
  )
}
