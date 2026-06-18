import type { ReactNode } from 'react'
import ParticleField from '../effects/ParticleField'

interface Props {
  title: string
  subtitle?: string
  badge?: string
  children?: ReactNode
  particles?: boolean
  particleColor?: string
}

export default function PageHero({ title, subtitle, badge, children, particles = true, particleColor }: Props) {
  return (
    <div className="relative border-b border-yellow-900/20 overflow-hidden" style={{ background: 'radial-gradient(ellipse at 50% 30%, rgba(42, 26, 10, 0.7) 0%, rgba(10, 9, 6, 0.9) 50%, var(--surface-0) 100%)' }}>
      {particles && <ParticleField count={20} color={particleColor} />}
      {/* Subtle cosmic ring */}
      <div className="absolute inset-0 flex items-center justify-center pointer-events-none opacity-30">
        <div className="w-[500px] h-[500px] rounded-full border border-yellow-800/15 animate-[breathe_8s_ease-in-out_infinite]" />
      </div>
      <div className="relative z-10 max-w-[1400px] mx-auto px-8 py-16 md:py-20 text-center">
        {badge && (
          <p className="pill font-['Press_Start_2P'] text-[0.55rem] text-yellow-600 tracking-[0.3em] mb-5 uppercase mx-auto">
            {badge}
          </p>
        )}
        <h1 className="font-['Press_Start_2P'] text-2xl md:text-4xl text-metallic-gold mb-4 leading-tight animate-[orbit-in_0.7s_cubic-bezier(0.34,1.56,0.64,1)_both]">
          {title}
        </h1>
        {subtitle && (
          <p className="font-['Crimson_Pro'] italic text-lg md:text-xl text-stone-400 max-w-2xl mx-auto animate-[orbit-in_0.7s_cubic-bezier(0.34,1.56,0.64,1)_0.15s_both]">
            {subtitle}
          </p>
        )}
        {children}
      </div>
    </div>
  )
}
