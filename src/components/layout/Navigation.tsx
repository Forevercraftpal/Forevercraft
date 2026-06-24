import { useState } from 'react'
import { Link, useLocation } from 'react-router-dom'

interface NavItem {
  label: string
  to?: string
  children?: Array<{ label: string; to: string }>
}

const NAV_ITEMS: Array<NavItem> = [
  { label: 'Home', to: '/' },
  { label: 'Expansion', to: '/bountiful-harvest' },
  { label: 'Gallery', to: '/gallery' },
  {
    label: 'Systems',
    children: [
      { label: 'Bountiful Harvest ✦', to: '/bountiful-harvest' },
      { label: 'Dream Rate', to: '/dream-rate' },
      { label: 'Skill Trees', to: '/skill-trees' },
      { label: 'CraftForever', to: '/craftforever' },
    ],
  },
  {
    label: 'Combat',
    children: [
      { label: 'Artifacts', to: '/artifacts' },
      { label: 'Armor Sets', to: '/armor-sets' },
      { label: 'Spirit Weapons', to: '/spirit-weapons' },
      { label: 'Classes', to: '/classes' },
      { label: 'Raid Bosses', to: '/raid-bosses' },
      { label: 'Infinite Castle', to: '/infinite-castle' },
    ],
  },
  {
    label: 'World',
    children: [
      { label: 'Companions', to: '/companions' },
      { label: 'Seasons & Events', to: '/seasons' },
      { label: 'Quests & Bounties', to: '/quests' },
      { label: 'Cooking', to: '/cooking' },
      { label: 'Gacha Fountain', to: '/gacha' },
      { label: 'Lore & Discovery', to: '/lore' },
    ],
  },
  {
    label: 'Social',
    children: [
      { label: 'Guilds', to: '/guilds' },
    ],
  },
  { label: 'Codex', to: '/codex' },
  { label: 'Guide', to: '/guide' },
  { label: 'Bedrock', to: '/bedrock' },
  { label: 'Donate', to: '/donate' },
]

export default function Navigation() {
  const location = useLocation()
  const [mobileOpen, setMobileOpen] = useState(false)
  const [openDropdown, setOpenDropdown] = useState<string | null>(null)
  const [theme, setTheme] = useState<'dark' | 'light'>(() =>
    typeof document !== 'undefined' && document.documentElement.classList.contains('light') ? 'light' : 'dark'
  )
  const toggleTheme = () => {
    setTheme(prev => {
      const next = prev === 'dark' ? 'light' : 'dark'
      document.documentElement.classList.toggle('light', next === 'light')
      try { localStorage.setItem('fc-theme', next) } catch { /* storage may be blocked */ }
      return next
    })
  }
  const themeLabel = theme === 'dark' ? 'Switch to day mode' : 'Switch to night mode'

  const isActive = (to: string) => location.pathname === to
  const isChildActive = (children?: Array<{ to: string }>) =>
    children?.some(c => location.pathname === c.to)

  return (
    <nav className="sticky top-0 z-50 bg-stone-950/90 backdrop-blur-xl border-b border-yellow-800/30 shadow-[0_4px_30px_rgba(0,0,0,0.4),0_0_60px_rgba(251,191,36,0.03)]" style={{ borderRadius: '0 0 24px 24px' }}>
      <div className="max-w-[1600px] mx-auto px-4 md:px-8 flex items-center justify-between h-16">
        {/* Logo */}
        <Link to="/" className="flex items-center gap-2 no-underline shrink-0">
          <img src="/icon.png" alt="Forevercraft" className="w-10 h-auto" style={{ imageRendering: 'pixelated' }} />
          <span className="font-['Pixelify_Sans'] text-[0.7rem] md:text-[0.8rem] text-metallic-gold tracking-wider">
            FOREVERCRAFT
          </span>
        </Link>

        {/* Desktop Nav */}
        <div className="hidden lg:flex items-center gap-1">
          {NAV_ITEMS.map(item => (
            <div key={item.label} className="relative group">
              {item.to ? (
                <Link
                  to={item.to}
                  className={`font-['Pixelify_Sans'] text-[0.75rem] tracking-wider px-5 py-2 rounded-full transition-all duration-300 no-underline inline-flex items-center h-9 ${
                    isActive(item.to)
                      ? 'text-yellow-400 bg-yellow-950/50 shadow-[0_0_16px_rgba(251,191,36,0.15),0_0_4px_rgba(251,191,36,0.1)]'
                      : 'text-stone-500 hover:text-yellow-500 hover:bg-yellow-950/20'
                  }`}
                >
                  {item.label.toUpperCase()}
                </Link>
              ) : (
                <>
                  <button
                    className={`font-['Pixelify_Sans'] text-[0.75rem] tracking-wider px-5 py-2 rounded-full transition-all duration-300 inline-flex items-center h-9 ${
                      isChildActive(item.children)
                        ? 'text-yellow-400 bg-yellow-950/50 shadow-[0_0_16px_rgba(251,191,36,0.15),0_0_4px_rgba(251,191,36,0.1)]'
                        : 'text-stone-500 hover:text-yellow-500 hover:bg-yellow-950/20'
                    }`}
                  >
                    {item.label.toUpperCase()} <span className="text-[0.7rem] ml-1">▾</span>
                  </button>
                  {/* Dropdown */}
                  <div className="absolute top-full left-0 pt-2 opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 z-50">
                    <div className="bg-stone-900/95 backdrop-blur-xl border border-yellow-900/30 rounded-3xl shadow-xl shadow-black/40 py-2 min-w-[220px] overflow-hidden">
                      {item.children?.map(child => (
                        <Link
                          key={child.to}
                          to={child.to}
                          className={`block px-5 py-2.5 font-['Pixelify_Sans'] text-[0.65rem] tracking-wider no-underline transition-all duration-200 ${
                            isActive(child.to)
                              ? 'text-yellow-400 bg-yellow-950/40'
                              : 'text-stone-400 hover:text-yellow-500 hover:bg-yellow-950/20'
                          }`}
                        >
                          {child.label}
                        </Link>
                      ))}
                    </div>
                  </div>
                </>
              )}
            </div>
          ))}

          {/* Downloads — last item, after Donate */}
          <Link
            to="/downloads"
            className={`font-['Pixelify_Sans'] text-[0.75rem] tracking-wider px-5 py-2 rounded-full transition-all duration-300 no-underline inline-flex items-center h-9 shrink-0 ${
              isActive('/downloads')
                ? 'text-yellow-400 bg-yellow-950/50 shadow-[0_0_16px_rgba(251,191,36,0.15),0_0_4px_rgba(251,191,36,0.1)]'
                : 'text-stone-500 hover:text-yellow-500 hover:bg-yellow-950/20'
            }`}
          >
            DOWNLOADS
          </Link>

          {/* Day / Night toggle */}
          <button
            onClick={toggleTheme}
            aria-label={themeLabel}
            title={themeLabel}
            data-noinvert
            className="fc-theme-toggle ml-2 text-xl shrink-0 hover:scale-110 transition-transform"
          >
            {theme === 'dark' ? '☀️' : '🌙'}
          </button>
        </div>

        {/* Mobile: theme toggle + hamburger */}
        <div className="lg:hidden flex items-center gap-1">
          <button
            onClick={toggleTheme}
            aria-label={themeLabel}
            title={themeLabel}
            data-noinvert
            className="fc-theme-toggle text-xl p-2"
          >
            {theme === 'dark' ? '☀️' : '🌙'}
          </button>
          <button
            onClick={() => setMobileOpen(!mobileOpen)}
            className="text-yellow-600 text-xl p-2"
          >
            {mobileOpen ? '✕' : '☰'}
          </button>
        </div>
      </div>

      {/* Mobile Menu */}
      {mobileOpen && (
        <div className="lg:hidden bg-stone-900/95 backdrop-blur-xl border-t border-yellow-900/20 max-h-[70vh] overflow-y-auto" style={{ borderRadius: '0 0 24px 24px' }}>
          {NAV_ITEMS.map(item => (
            <div key={item.label}>
              {item.to ? (
                <Link
                  to={item.to}
                  onClick={() => setMobileOpen(false)}
                  className={`block px-6 py-3 font-['Pixelify_Sans'] text-[0.65rem] tracking-wider no-underline ${
                    isActive(item.to) ? 'text-yellow-400 bg-yellow-950/30' : 'text-stone-400'
                  }`}
                >
                  {item.label.toUpperCase()}
                </Link>
              ) : (
                <>
                  <button
                    onClick={() => setOpenDropdown(openDropdown === item.label ? null : item.label)}
                    className={`w-full text-left px-6 py-3 font-['Pixelify_Sans'] text-[0.65rem] tracking-wider ${
                      isChildActive(item.children) ? 'text-yellow-400' : 'text-stone-400'
                    }`}
                  >
                    {item.label.toUpperCase()} <span className={`text-[0.55rem] ml-1 inline-block transition-transform ${openDropdown === item.label ? 'rotate-180' : ''}`}>▼</span>
                  </button>
                  {openDropdown === item.label && item.children?.map(child => (
                    <Link
                      key={child.to}
                      to={child.to}
                      onClick={() => setMobileOpen(false)}
                      className={`block px-10 py-2.5 font-['Pixelify_Sans'] text-[0.6rem] tracking-wider no-underline ${
                        isActive(child.to) ? 'text-yellow-400' : 'text-stone-500 hover:text-yellow-600'
                      }`}
                    >
                      {child.label}
                    </Link>
                  ))}
                </>
              )}
            </div>
          ))}
          <a
            href="https://buymeacoffee.com/forevercraft"
            target="_blank"
            rel="noopener noreferrer"
            className="block mx-6 my-3 px-4 py-3 font-['Pixelify_Sans'] text-[0.7rem] tracking-wider text-center no-underline text-stone-500 hover:text-yellow-600 transition-colors"
          >
            DONATE
          </a>
        </div>
      )}
    </nav>
  )
}
