import { TIER_HEX } from '../../data/constants'
import type { SpiritTier } from '../../data/types'

interface Props {
  value: number
  max: number
  tier?: SpiritTier
  color?: string
  label?: string
  showValue?: boolean
  height?: string
}

export default function ProgressBar({
  value, max, tier, color, label, showValue = true, height = 'h-2'
}: Props) {
  const pct = Math.min((value / max) * 100, 100)
  const barColor = color ?? (tier ? TIER_HEX[tier] : '#FBBF24')

  return (
    <div>
      {(label || showValue) && (
        <div className="flex justify-between mb-1">
          {label && <span className="font-['Crimson_Pro'] text-stone-400 text-sm">{label}</span>}
          {showValue && <span className="font-['Press_Start_2P'] text-[0.4rem] text-stone-500">{value}/{max}</span>}
        </div>
      )}
      <div className={`w-full bg-stone-800 rounded-sm overflow-hidden ${height}`}>
        <div
          className="h-full rounded-sm transition-all duration-1000 ease-out"
          style={{ width: `${pct}%`, backgroundColor: barColor }}
        />
      </div>
    </div>
  )
}
