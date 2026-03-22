import { useState, type ReactNode } from 'react'

interface Props {
  children: ReactNode
  label?: string
}

export default function Spoiler({ children, label = "Caution! For fear that the spoils of war may be disclosed too early...." }: Props) {
  const [open, setOpen] = useState(false)

  return (
    <div className="mt-4 rounded border border-yellow-900/30 overflow-hidden">
      <button
        onClick={() => setOpen(!open)}
        className="w-full flex items-center gap-3 px-4 py-3 bg-yellow-950/20 hover:bg-yellow-950/30 transition-colors text-left"
      >
        <span className="text-yellow-700 text-sm">{open ? '🔓' : '🔒'}</span>
        <span className="font-['Crimson_Pro'] italic text-yellow-700/80 text-sm flex-1">
          {label}
        </span>
        <span className={`text-yellow-800 text-xs transition-transform duration-300 ${open ? 'rotate-180' : ''}`}>
          ▼
        </span>
      </button>
      <div className={`grid transition-all duration-500 ${open ? 'grid-rows-[1fr]' : 'grid-rows-[0fr]'}`}>
        <div className="overflow-hidden">
          <div className="px-4 py-4 bg-stone-950/80 border-t border-yellow-900/20">
            {children}
          </div>
        </div>
      </div>
    </div>
  )
}
