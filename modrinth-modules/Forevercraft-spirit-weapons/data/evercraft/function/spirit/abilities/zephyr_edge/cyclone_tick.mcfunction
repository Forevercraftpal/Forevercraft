# Zephyr Edge — Cyclone Per-Tick
# Run as @s at @s while cyclone is active
# Pull entities, deal damage every 20 ticks, particles

# Timer check (sp_timer decremented in spirit/tick)
execute if score @s ec.sp_timer matches ..0 run return run function evercraft:spirit/abilities/zephyr_edge/cyclone_end

# === PULL ENEMIES INWARD ===
# Apply inward motion to all nearby mobs (6 blocks; spirit: 8)
execute if score @s ec.sp_tier matches 7 as @e[distance=1..8,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s facing entity @p feet run tp @s ^ ^ ^0.3
execute unless score @s ec.sp_tier matches 7 as @e[distance=1..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s facing entity @p feet run tp @s ^ ^ ^0.3

# === DAMAGE (every 20 ticks = 1 second) ===
execute store result score #cyc_mod ec.temp run scoreboard players get @s ec.sp_timer
scoreboard players operation #cyc_mod ec.temp %= #20 ec.const
execute if score #cyc_mod ec.temp matches 0 run execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 3 minecraft:player_attack by @p[sort=nearest,limit=1]

# === PARTICLES (tornado visual) ===
particle cloud ~ ~0.5 ~ 3 0.5 3 0.02 5
particle gust ~ ~1.5 ~ 2 1 2 0.05 3
particle dust_color_transition{from_color:[0.5,0.8,1.0],to_color:[1.2,0.2,0.6],scale:0.9} ~ ~1 ~ 3 1.5 3 0.05 10

# Sound (whooshing)
execute if score #cyc_mod ec.temp matches 0 run playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 0.5 1.5
