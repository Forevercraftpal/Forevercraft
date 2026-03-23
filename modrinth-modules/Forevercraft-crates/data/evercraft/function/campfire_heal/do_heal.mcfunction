# Campfire Healing — Apply healing + regen boost + saturation
# Instant heal (like lifesteal) so it stacks with any regen effects
# Regen boost: upgrades existing Regen I → Regen II (golden apple rate, cap)
# Saturation: brief burst to slow hunger degradation

# Heal 1 heart (instant — always applies)
effect give @s instant_health 1 0 true

# Regen boost: if player has Regen I from accessories/other sources, upgrade to Regen II
# Cap at golden apple rate (amplifier 1) — doesn't self-escalate since campfire never gives regen itself
execute if data entity @s {active_effects:[{id:"minecraft:regeneration",amplifier:0b}]} run effect give @s regeneration 8 1 true

# Slow hunger degradation (covers full 7s cycle so well-fed harmonize bonus is consistent)
effect give @s saturation 8 0 true

# Subtle heart particle
particle heart ~ ~1.5 ~ 0.3 0.3 0.3 0 1
