import { useState, useEffect } from 'react'
import { createPortal } from 'react-dom'

export default function DonatePopup() {
  const [visible, setVisible] = useState(false)
  const [dismissed, setDismissed] = useState(false)
  const [fadeIn, setFadeIn] = useState(false)

  useEffect(() => {
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
            // Trigger fade-in on next frame
            requestAnimationFrame(() => setFadeIn(true))
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

  // 100% inline styles — no Tailwind classes on outer container
  // No transform, no animation class, no backdrop-filter on fixed element
  return createPortal(
    <div
      style={{
        position: 'fixed',
        bottom: '24px',
        right: '24px',
        zIndex: 99999,
        opacity: fadeIn ? 1 : 0,
        transition: 'opacity 0.4s ease-out',
        // Explicitly NO transform
      }}
    >
      <div
        style={{
          background: 'rgba(28, 25, 23, 0.95)',
          border: '1px solid rgba(133, 77, 14, 0.5)',
          borderRadius: '8px',
          padding: '20px',
          maxWidth: '320px',
          boxShadow: '0 20px 25px -5px rgba(0,0,0,0.5)',
        }}
      >
        <button
          onClick={dismiss}
          style={{
            position: 'absolute',
            top: '8px',
            right: '12px',
            background: 'none',
            border: 'none',
            color: '#57534e',
            fontSize: '14px',
            cursor: 'pointer',
          }}
          aria-label="Dismiss"
        >
          &#10005;
        </button>

        <div style={{ display: 'flex', alignItems: 'flex-start', gap: '12px' }}>
          <img
            src="/icon.png"
            alt=""
            style={{ width: '40px', height: '40px', flexShrink: 0, marginTop: '2px', imageRendering: 'pixelated' }}
          />
          <div>
            <p
              style={{
                fontFamily: "'Crimson Pro', serif",
                fontSize: '16px',
                color: '#d6d3d1',
                lineHeight: '1.4',
                marginBottom: '12px',
                marginTop: 0,
              }}
            >
              Enjoying Forevercraft? If you'd like to help us keep creating and updating the pack,
              even a small donation means the world to us.
            </p>
            <a
              href="/donate"
              style={{
                display: 'inline-block',
                padding: '8px 16px',
                borderRadius: '4px',
                background: 'rgba(202, 138, 4, 0.9)',
                color: '#0c0a09',
                fontFamily: "'Press Start 2P', cursive",
                fontSize: '0.55rem',
                letterSpacing: '0.05em',
                textDecoration: 'none',
              }}
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
