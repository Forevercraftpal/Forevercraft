# The Venomweaver — Egg Sac Tick
# Checks all egg sacs: hatch after 200 ticks, or destroy if clicked

# Check each egg sac for clicks (player hit = destroy)
execute as @e[tag=ec.rd_vw_egg] if data entity @s interaction run function evercraft:raids/boss/venomweaver/abilities/egg_hit

# Check hatch timer per-egg: hatch if age >= 200 ticks
execute as @e[tag=ec.rd_vw_egg] at @s run function evercraft:raids/boss/venomweaver/abilities/egg_age_check

# Egg particles (pulsing web)
execute as @e[tag=ec.rd_vw_egg] at @s run particle minecraft:item_cobweb ~ ~0.5 ~ 0.3 0.3 0.3 0.01 2
