import { useEffect, useState } from 'react'

export default function ScrollProgress() {
  const [progress, setProgress] = useState(0)

  useEffect(() => {
    const update = () => {
      const scrollTop = document.documentElement.scrollTop
      const scrollHeight = document.documentElement.scrollHeight - document.documentElement.clientHeight
      setProgress(scrollHeight > 0 ? (scrollTop / scrollHeight) * 100 : 0)
    }
    window.addEventListener('scroll', update, { passive: true })
    return () => window.removeEventListener('scroll', update)
  }, [])

  return (
    <div className="fixed top-0 left-0 w-full h-0.5 z-[100]">
      <div
        className="h-full bg-gradient-to-r from-yellow-600 via-yellow-400 to-yellow-600 transition-[width] duration-75"
        style={{ width: `${progress}%` }}
      />
    </div>
  )
}
