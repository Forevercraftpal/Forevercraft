import { useState, type ReactNode } from 'react'

interface Tab {
  label: string
  content: ReactNode
}

interface Props {
  tabs: Tab[]
  defaultTab?: number
}

export default function Tabs({ tabs, defaultTab = 0 }: Props) {
  const [active, setActive] = useState(defaultTab)

  return (
    <div>
      <div className="flex gap-1 border-b border-yellow-900/30 mb-6 overflow-x-auto">
        {tabs.map((tab, i) => (
          <button
            key={tab.label}
            onClick={() => setActive(i)}
            className={`font-['Press_Start_2P'] text-[0.45rem] px-4 py-3 tracking-wider transition-all whitespace-nowrap border-b-2 ${
              active === i
                ? 'text-yellow-400 border-yellow-500 bg-yellow-950/20'
                : 'text-stone-500 border-transparent hover:text-yellow-700 hover:border-yellow-900/50'
            }`}
          >
            {tab.label}
          </button>
        ))}
      </div>
      <div>{tabs[active]?.content}</div>
    </div>
  )
}
