import { useEffect, useRef } from 'react'
import { createPortal } from 'react-dom'

// Generate random stars once
const STAR_COUNT = 120
const stars = Array.from({ length: STAR_COUNT }, () => ({
  x: Math.random() * 100,
  y: Math.random() * 100,
  size: Math.random() < 0.1 ? 2 : Math.random() < 0.3 ? 1.5 : 1,
  opacity: 0.15 + Math.random() * 0.5,
  twinkleDelay: Math.random() * 6,
  twinkleDuration: 3 + Math.random() * 5,
  // Some stars get a subtle color tint
  color: Math.random() < 0.08
    ? 'rgba(255,220,150,1)'   // warm gold
    : Math.random() < 0.12
    ? 'rgba(180,200,255,1)'   // cool blue
    : 'rgba(255,255,255,1)',  // white
}))

export default function StarField() {
  const containerRef = useRef<HTMLDivElement | null>(null)

  useEffect(() => {
    // Create a dedicated div for stars outside #root
    let el = document.getElementById('star-field')
    if (!el) {
      el = document.createElement('div')
      el.id = 'star-field'
      // Insert before #root so it's behind everything
      document.body.insertBefore(el, document.getElementById('root'))
    }
    containerRef.current = el as HTMLDivElement
    return () => {
      // Don't remove — it's a persistent container
    }
  }, [])

  if (!containerRef.current) return null

  return createPortal(
    <svg
      width="100%"
      height="100%"
      style={{
        position: 'fixed',
        inset: 0,
        pointerEvents: 'none',
        zIndex: 0,
      }}
      xmlns="http://www.w3.org/2000/svg"
    >
      <style>{`
        @keyframes twinkle {
          0%, 100% { opacity: var(--base-opacity); }
          50% { opacity: calc(var(--base-opacity) * 0.3); }
        }
      `}</style>
      {stars.map((star, i) => (
        <circle
          key={i}
          cx={`${star.x}%`}
          cy={`${star.y}%`}
          r={star.size}
          fill={star.color}
          style={{
            '--base-opacity': star.opacity,
            opacity: star.opacity,
            animation: `twinkle ${star.twinkleDuration}s ease-in-out ${star.twinkleDelay}s infinite`,
          } as React.CSSProperties}
        />
      ))}
    </svg>,
    containerRef.current
  )
}
