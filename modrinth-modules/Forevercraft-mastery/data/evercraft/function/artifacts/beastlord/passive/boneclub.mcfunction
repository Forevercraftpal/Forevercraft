# Boneclub (Common) — Passive: Pet Speed
# Owned tamed animals gain Speed I while player holds the Boneclub
# Refreshes every 2 seconds (gated on str_tick)

# Only apply every 40 ticks (synced with strength aura refresh)
execute unless score @s ec.bl_str_tick matches 1 run return 0

# Find owned tameables within 16 blocks
tag @s add bl.owner
execute at @s as @e[type=wolf,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=cat,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=parrot,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=fox,distance=..16,tag=ec.fox_tamed] run function evercraft:artifacts/beastlord/check_owned
tag @s remove bl.owner

# No owned animals nearby
execute unless entity @e[tag=bl.owned] run return 0

# Apply Speed I (4s duration, refreshed every 2s)
effect give @e[tag=bl.owned] speed 4 0 true

# Subtle speed particles
execute at @e[tag=bl.owned] run particle item{item:{id:"minecraft:bone"}} ~ ~0.3 ~ 0.15 0.1 0.15 0.02 2

# Cleanup
tag @e[tag=bl.owned] remove bl.owned
