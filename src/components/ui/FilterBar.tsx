interface FilterOption {
  label: string
  value: string
}

interface Props {
  search: string
  onSearchChange: (v: string) => void
  searchPlaceholder?: string
  filters?: {
    label: string
    value: string
    options: FilterOption[]
    onChange: (v: string) => void
  }[]
  resultCount?: number
  resultLabel?: string
}

export default function FilterBar({
  search, onSearchChange, searchPlaceholder = 'Search...',
  filters = [], resultCount, resultLabel = 'RESULTS'
}: Props) {
  return (
    <div className="space-y-4 mb-8">
      <div className="flex flex-col lg:flex-row gap-4">
        <input
          type="text"
          placeholder={searchPlaceholder}
          value={search}
          onChange={e => onSearchChange(e.target.value)}
          className="flex-1 bg-stone-900 border border-yellow-900/50 rounded px-4 py-2.5 text-stone-200 placeholder-stone-600 font-['Crimson_Pro'] text-base focus:outline-none focus:border-yellow-700 transition-colors"
        />
        {filters.map(f => (
          <div key={f.label} className="flex gap-1.5 flex-wrap">
            {f.options.map(opt => (
              <button
                key={opt.value}
                onClick={() => f.onChange(opt.value)}
                className={`font-['Press_Start_2P'] text-[0.4rem] px-3 py-2 rounded border transition-all ${
                  f.value === opt.value
                    ? 'bg-yellow-900/60 border-yellow-600 text-yellow-400'
                    : 'bg-stone-900 border-stone-700 text-stone-500 hover:border-yellow-900'
                }`}
              >
                {opt.label}
              </button>
            ))}
          </div>
        ))}
      </div>
      {resultCount !== undefined && (
        <p className="font-['Press_Start_2P'] text-[0.4rem] text-stone-600 tracking-widest">
          {resultCount} {resultLabel}
        </p>
      )}
    </div>
  )
}
