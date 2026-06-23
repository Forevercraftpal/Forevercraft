import type { Tier, SpiritTier } from '../../data/types'
import { TIER_BADGE } from '../../data/constants'

interface Props {
  tier: Tier | SpiritTier
  size?: 'sm' | 'md'
}

export default function TierBadge({ tier, size = 'sm' }: Props) {
  const sizeClass = size === 'sm' ? 'text-[0.6rem] px-2 py-0.5' : 'text-[0.7rem] px-3 py-1'
  return (
    <span className={`font-['Pixelify_Sans'] rounded shrink-0 ${sizeClass} ${TIER_BADGE[tier]}`}>
      {tier.toUpperCase()}
    </span>
  )
}
