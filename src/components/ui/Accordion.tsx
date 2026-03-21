import { useState, type ReactNode } from 'react'

interface Props {
  title: string
  children: ReactNode
  defaultOpen?: boolean
  titleClass?: string
}

export default function Accordion({ title, children, defaultOpen = false, titleClass = '' }: Props) {
  const [open, setOpen] = useState(defaultOpen)

  return (
    <div className="border border-yellow-900/30 rounded overflow-hidden">
      <button
        onClick={() => setOpen(!open)}
        className={`w-full flex items-center justify-between px-4 py-3 bg-stone-900/60 hover:bg-stone-900/80 transition-colors text-left ${titleClass}`}
      >
        <span className="font-['Press_Start_2P'] text-[0.5rem] text-yellow-500 tracking-wider">
          {title}
        </span>
        <span className={`text-yellow-700 text-xs transition-transform duration-300 ${open ? 'rotate-180' : ''}`}>
          ▼
        </span>
      </button>
      <div
        className={`grid transition-all duration-300 ease-out ${open ? 'grid-rows-[1fr]' : 'grid-rows-[0fr]'}`}
      >
        <div className="overflow-hidden">
          <div className="px-4 py-3 bg-stone-950/60">
            {children}
          </div>
        </div>
      </div>
    </div>
  )
}
