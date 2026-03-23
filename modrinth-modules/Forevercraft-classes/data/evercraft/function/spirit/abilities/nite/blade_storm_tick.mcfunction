# Nite — Blade Storm Per-Tick
# Run as @s at @s while blade storm is active
# Orbit 2 markers around player, damage entities near markers

# Timer check
execute if score @s ec.sp_timer matches ..0 run return run function evercraft:spirit/abilities/nite/blade_storm_end

# Increment angle (0-359, wraps)
scoreboard players add @s ec.sp_combo 9
execute if score @s ec.sp_combo matches 360.. run scoreboard players remove @s ec.sp_combo 360

# Position orbit markers using ^ ^ ^ relative coordinates
# Sword A: offset by current angle (approximate circle using positioned ^ ^ ^6)
# Sword B: opposite side (180 degrees apart)
# Since we can't do trig in mcfunction, rotate player facing and use ^ ^ ^6
# Store player rotation, modify, place marker, restore

# Orbit radius (6 blocks; spirit: 8)
# Simplified approach: teleport markers to positions around player at fixed radius
# using tp with rotation offset

# Marker A: at current angle offset
execute rotated as @s run execute rotated ~0 0 positioned ^ ^ ^6 run tp @e[tag=ec.sp_orbit_a,limit=1] ~ ~ ~

# Marker B: 180 degrees opposite
execute rotated as @s run execute rotated ~180 0 positioned ^ ^ ^6 run tp @e[tag=ec.sp_orbit_b,limit=1] ~ ~ ~

# Damage entities near each marker (weapon damage)
execute at @e[tag=ec.sp_orbit_a,limit=1] run execute as @e[distance=..2,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 6 minecraft:player_attack by @p[sort=nearest,limit=1]
execute at @e[tag=ec.sp_orbit_b,limit=1] run execute as @e[distance=..2,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 6 minecraft:player_attack by @p[sort=nearest,limit=1]

# Particles at marker positions
execute at @e[tag=ec.sp_orbit_a,limit=1] run particle sweep_attack ~ ~0.5 ~ 0.3 0.3 0.3 0.2 2
execute at @e[tag=ec.sp_orbit_b,limit=1] run particle sweep_attack ~ ~0.5 ~ 0.3 0.3 0.3 0.2 2
execute at @e[tag=ec.sp_orbit_a,limit=1] run particle dust_color_transition{from_color:[0.2,0.2,0.8],to_color:[1,0.8,0.4],scale:0.2} ~ ~0.5 ~ 0.3 0.3 0.3 0.02 3
execute at @e[tag=ec.sp_orbit_b,limit=1] run particle dust_color_transition{from_color:[0.8,0.4,0.2],to_color:[1,0.2,0.2],scale:0.8} ~ ~0.5 ~ 0.3 0.3 0.3 0.02 3

# Rotation sound every 20 ticks
execute store result score #bs_mod ec.temp run scoreboard players get @s ec.sp_timer
scoreboard players operation #bs_mod ec.temp %= #20 ec.const
execute if score #bs_mod ec.temp matches 0 run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.5 1.5
