import { useMemo } from 'react'

interface Props {
  count?: number
  color?: string
}

export default function ParticleField({ count = 30, color = 'rgba(234, 179, 8, 0.4)' }: Props) {
  const particles = useMemo(() =>
    Array.from({ length: count }, (_, i) => ({
      id: i,
      left: `${Math.random() * 100}%`,
      delay: `${Math.random() * 20}s`,
      duration: `${15 + Math.random() * 25}s`,
      size: `${1 + Math.random() * 2}px`,
    })), [count])

  return (
    <div className="fixed inset-0 pointer-events-none z-0 overflow-hidden">
      {particles.map(p => (
        <div
          key={p.id}
          className="absolute rounded-none animate-[drift_linear_infinite]"
          style={{
            left: p.left,
            bottom: '-10px',
            width: p.size,
            height: p.size,
            background: color,
            animationDelay: p.delay,
            animationDuration: p.duration,
            animationName: 'drift',
            animationTimingFunction: 'linear',
            animationIterationCount: 'infinite',
          }}
        />
      ))}
    </div>
  )
}
