# The Beginning and The End — Duality: alternates fire and frost each swing
# Run as the swinging player, anchored eyes
# ec.rg_duality toggles 0/1 each swing (set in swing.mcfunction)
# ec.rg_target tag is set on hit targets by swing_t5

# Phase 0: Fire — ignite targets for 2s
execute if score @s ec.rg_duality matches 0 as @e[tag=ec.rg_target] run data modify entity @s Fire set value 40s
execute if score @s ec.rg_duality matches 0 positioned ^ ^ ^1.5 run particle flame ~ ~0.8 ~ 0.4 0.3 0.4 0.02 6
execute if score @s ec.rg_duality matches 0 run playsound minecraft:item.firecharge.use player @a[distance=..16] ~ ~ ~ 0.4 1.6

# Phase 1: Frost — Slowness II for 2s on hit targets
execute if score @s ec.rg_duality matches 1 as @e[tag=ec.rg_target] run effect give @s slowness 2 1
execute if score @s ec.rg_duality matches 1 positioned ^ ^ ^1.5 run particle snowflake ~ ~0.8 ~ 0.4 0.3 0.4 0.02 6
execute if score @s ec.rg_duality matches 1 run playsound minecraft:block.powder_snow.step player @a[distance=..16] ~ ~ ~ 0.6 0.8
