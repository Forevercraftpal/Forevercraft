# Beastlord — Refresh Strength aura on tamed animals
# Runs as player every 2 seconds (40 ticks)
# Applies real Strength effect to all owned wolves, cats, parrots within 16 blocks

# Reset timer
scoreboard players set @s ec.bl_str_tick 40

# Tag owned tameables within 16 blocks
tag @s add bl.owner
execute at @s as @e[type=wolf,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=cat,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=parrot,distance=..16] run function evercraft:artifacts/beastlord/check_owned
execute at @s as @e[type=fox,distance=..16,tag=ec.fox_tamed] run function evercraft:artifacts/beastlord/check_owned
tag @s remove bl.owner

# No owned animals? Exit
execute unless entity @e[tag=bl.owned] run return 0

# Apply Strength effect scaled by tier (4s duration, refreshed every 2s)
# Tier 1-2: Strength I (amplifier 0)
execute if score @s ec.bl_tier matches 1..2 run effect give @e[tag=bl.owned] strength 4 0 true
# Tier 3-4: Strength II (amplifier 1)
execute if score @s ec.bl_tier matches 3..4 run effect give @e[tag=bl.owned] strength 4 1 true
# Tier 5-6: Strength III (amplifier 2)
execute if score @s ec.bl_tier matches 5..6 run effect give @e[tag=bl.owned] strength 4 2 true

# Soul particles on each buffed animal
execute at @e[tag=bl.owned] run particle soul ~ ~0.5 ~ 0.2 0.3 0.2 0.02 3

# Clean up ownership tags
tag @e[tag=bl.owned] remove bl.owned
