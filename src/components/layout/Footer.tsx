import { Link } from 'react-router-dom'

export default function Footer() {
  return (
    <footer className="border-t border-yellow-900/30 bg-stone-950">
      <div className="max-w-[1600px] mx-auto px-8 py-8">
        <div className="flex flex-col md:flex-row items-center justify-between gap-4">
          <div className="flex items-center gap-2">
            <img src="/icon.png" alt="Forevercraft" className="w-7 h-auto" style={{ imageRendering: 'pixelated' }} />
            <span className="font-['Press_Start_2P'] text-[0.65rem] text-metallic-gold tracking-wider">
              FOREVERCRAFT
            </span>
          </div>
          <p className="font-['Press_Start_2P'] text-[0.55rem] text-stone-600 tracking-widest text-center">
            BUILT WITH LOVE · ONE FUNCTION AT A TIME
          </p>
          <div className="flex items-center gap-4">
            <Link to="/privacy" className="font-['Crimson_Pro'] text-stone-600 hover:text-stone-400 text-base no-underline transition-colors">
              Privacy
            </Link>
            <Link to="/terms" className="font-['Crimson_Pro'] text-stone-600 hover:text-stone-400 text-base no-underline transition-colors">
              Terms
            </Link>
            <Link to="/support" className="font-['Crimson_Pro'] text-stone-600 hover:text-stone-400 text-base no-underline transition-colors">
              Support
            </Link>
            <Link to="/press" className="font-['Crimson_Pro'] text-stone-600 hover:text-stone-400 text-base no-underline transition-colors">
              Press Kit
            </Link>
            <span className="font-['Crimson_Pro'] text-stone-600 text-base italic">
              Minecraft 26.1 · Java & Bedrock
            </span>
          </div>
        </div>
      </div>
    </footer>
  )
}
