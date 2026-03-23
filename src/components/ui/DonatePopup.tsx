import { useState, useEffect } from 'react'
import { createPortal } from 'react-dom'

export default function DonatePopup() {
  const [visible, setVisible] = useState(false)
  const [dismissed, setDismissed] = useState(false)

  useEffect(() => {
    // Don't show if already dismissed this session
    if (sessionStorage.getItem('fc-donate-dismissed')) {
      setDismissed(true)
      return
    }

    let scrollTime = 0
    let interval: ReturnType<typeof setInterval>

    const handleScroll = () => {
      if (!interval && !dismissed) {
        interval = setInterval(() => {
          scrollTime++
          if (scrollTime >= 15) {
            setVisible(true)
            clearInterval(interval)
          }
        }, 1000)
      }
    }

    window.addEventListener('scroll', handleScroll, { passive: true })
    return () => {
      window.removeEventListener('scroll', handleScroll)
      if (interval) clearInterval(interval)
    }
  }, [dismissed])

  const dismiss = () => {
    setVisible(false)
    setDismissed(true)
    sessionStorage.setItem('fc-donate-dismissed', '1')
  }

  if (!visible || dismissed) return null

  // Use portal to render directly on document.body — bypasses any parent
  // transform/backdrop-filter that would break fixed positioning
  return createPortal(
    <div
      style={{
        position: 'fixed',
        bottom: '24px',
        right: '24px',
        zIndex: 99999,
      }}
      className="animate-[slideUp_0.4s_ease-out]"
    >
      <div className="bg-stone-900/95 backdrop-blur-sm border border-yellow-800/50 rounded-lg shadow-xl shadow-black/50 p-5 max-w-[320px]">
        <button
          onClick={dismiss}
          className="absolute top-2 right-3 text-stone-600 hover:text-stone-400 text-sm transition-colors"
          aria-label="Dismiss"
        >
          &#10005;
        </button>

        <div className="flex items-start gap-3">
          <img
            src="/icon.png"
            alt=""
            className="w-10 h-10 shrink-0 mt-0.5"
            style={{ imageRendering: 'pixelated' }}
          />
          <div>
            <p className="font-['Crimson_Pro'] text-base text-stone-300 leading-snug mb-3">
              Enjoying Forevercraft? If you'd like to help us keep creating and updating the pack,
              even a small donation means the world to us.
            </p>
            <a
              href="/donate"
              className="inline-block px-4 py-2 rounded bg-yellow-600/90 hover:bg-yellow-500 text-stone-950 font-['Press_Start_2P'] text-[0.55rem] tracking-wider transition-colors no-underline"
            >
              SUPPORT US
            </a>
          </div>
        </div>
      </div>
    </div>,
    document.body
  )
}
