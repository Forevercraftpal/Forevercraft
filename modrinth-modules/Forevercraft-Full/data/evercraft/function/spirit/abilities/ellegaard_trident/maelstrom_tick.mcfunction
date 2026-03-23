# Soul Piercer — Maelstrom Per-Tick
# Run as maelstrom marker, at marker position
# Pull entities inward, damage every 20 ticks, Mining Fatigue II, particles

# === PULL ENEMIES INWARD (every tick) ===
# Mobs within 6 blocks face the marker, then move forward
execute as @e[distance=1..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s facing entity @e[tag=ec.sp_maelstrom_marker,sort=nearest,limit=1,distance=..20] feet run tp @s ^ ^ ^0.5

# === DAMAGE + EFFECTS (every 20 ticks) ===
execute store result score #mael_mod ec.temp run time query gametime
scoreboard players operation #mael_mod ec.temp %= #20 ec.const

# Mining Fatigue II (3s duration bridges the 20-tick gap)
execute if score #mael_mod ec.temp matches 0 run effect give @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] mining_fatigue 3 1 false

# 4 damage per second
execute if score #mael_mod ec.temp matches 0 run execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 4 minecraft:drown

# === PARTICLES — water vortex ===
particle bubble ~ ~0.5 ~ 4.0 1.0 4.0 0.05 15
particle splash ~ ~1 ~ 3.0 0.5 3.0 0.08 10
particle rain ~ ~3 ~ 4.0 1.0 4.0 0.02 8
particle dust_color_transition{from_color:[0.0,0.3,0.8],to_color:[1.5,0.0,0.6],scale:1.0} ~ ~1.5 ~ 3.0 1.0 3.0 0.03 8

# === SOUND (every 20 ticks) ===
execute if score #mael_mod ec.temp matches 0 run playsound minecraft:entity.player.splash player @a ~ ~ ~ 0.6 0.5
