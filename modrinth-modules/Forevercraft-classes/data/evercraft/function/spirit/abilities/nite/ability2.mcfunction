# Nite — Blade Storm (Sneak+Right-click, 25s CD)
# Throw both swords outward — orbit player in 6-block radius for 5 seconds
# (Spirit: 8 blocks, 7 seconds)
# Damage all entities they pass through, final convergence AoE

# Set cooldown (500 ticks = 25 seconds)
scoreboard players set @s ec.sp_cd2 500

# Start Blade Storm
tag @s add ec.sp_blade_storm

# Duration: 100 ticks (5s), Spirit: 140 ticks (7s)
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 140
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_timer 100

# Spawn 2 orbiting marker entities (swords)
# They orbit using per-tick position calculation
summon marker ~ ~1 ~ {Tags:["ec.sp_orbit","ec.sp_orbit_a"]}
summon marker ~ ~1 ~ {Tags:["ec.sp_orbit","ec.sp_orbit_b"]}

# Initialize angle counter
scoreboard players set @s ec.sp_combo 0

# VFX
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 1.0 1.5
particle sweep_attack ~ ~1 ~ 2 0.5 2 0.5 10
title @s actionbar [{"text":"BLADE STORM!","color":"dark_purple","bold":true}]
