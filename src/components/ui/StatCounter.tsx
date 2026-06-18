import { useEffect, useRef, useState } from 'react'

interface Props {
  end: number
  label: string
  duration?: number
  prefix?: string
  suffix?: string
}

export default function StatCounter({ end, label, duration = 2000, prefix = '', suffix = '' }: Props) {
  const ref = useRef<HTMLDivElement>(null)
  const [count, setCount] = useState(0)
  const [started, setStarted] = useState(false)

  useEffect(() => {
    const el = ref.current
    if (!el) return
    const observer = new IntersectionObserver(
      ([entry]) => { if (entry.isIntersecting && !started) { setStarted(true); observer.disconnect() } },
      { threshold: 0.3 }
    )
    observer.observe(el)
    return () => observer.disconnect()
  }, [started])

  useEffect(() => {
    if (!started) return
    const startTime = Date.now()
    const step = () => {
      const elapsed = Date.now() - startTime
      const progress = Math.min(elapsed / duration, 1)
      const eased = 1 - Math.pow(1 - progress, 3)
      setCount(Math.floor(eased * end))
      if (progress < 1) requestAnimationFrame(step)
    }
    requestAnimationFrame(step)
  }, [started, end, duration])

  const formatted = count.toLocaleString()

  return (
    <div ref={ref} className="orb w-24 h-24 md:w-28 md:h-28 animate-breathe" style={{ animationDelay: `${Math.random() * 2}s` }}>
      <div className="font-['Press_Start_2P'] text-[0.65rem] md:text-[0.75rem] text-yellow-400 mb-0.5">
        {prefix}{formatted}{suffix}
      </div>
      <div className="font-['Press_Start_2P'] text-[0.4rem] md:text-[0.45rem] text-yellow-700 tracking-widest uppercase text-center px-1">
        {label}
      </div>
    </div>
  )
}
