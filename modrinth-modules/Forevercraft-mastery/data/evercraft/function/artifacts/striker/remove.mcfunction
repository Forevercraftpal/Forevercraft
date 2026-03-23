# Striker Cleanup — Remove all bonuses when unequipping
# Run as player who is ec.sk_active but no longer holding a striker mace

# Remove Sentinel if active
execute if entity @s[tag=ec.sk_sentinel] run function evercraft:artifacts/striker/sentinel_remove

# Remove attribute modifiers
attribute @s knockback_resistance modifier remove evercraft:striker_kb_resist

# Reset scores (preserve Impact for brief re-equip grace)
scoreboard players set @s ec.sk_tier 0
scoreboard players set @s ec.sk_combat 0

# Remove tag
tag @s remove ec.sk_active
