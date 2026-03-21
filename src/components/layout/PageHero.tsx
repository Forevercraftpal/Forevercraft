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
    <div className="relative border-b border-yellow-900/40 bg-[radial-gradient(ellipse_at_top,_#2a1a0a_0%,_#0a0906_70%)] overflow-hidden">
      {particles && <ParticleField count={20} color={particleColor} />}
      <div className="relative z-10 max-w-6xl mx-auto px-6 py-16 md:py-20 text-center">
        {badge && (
          <p className="font-['Press_Start_2P'] text-[0.45rem] text-yellow-700 tracking-[0.3em] mb-4 uppercase">
            {badge}
          </p>
        )}
        <h1 className="font-['Press_Start_2P'] text-2xl md:text-4xl text-yellow-400 mb-4 leading-tight drop-shadow-[0_0_30px_rgba(200,140,40,0.4)]">
          {title}
        </h1>
        {subtitle && (
          <p className="font-['Crimson_Pro'] italic text-lg md:text-xl text-stone-400 max-w-2xl mx-auto">
            {subtitle}
          </p>
        )}
        {children}
      </div>
    </div>
  )
}
