# Voidpiercer — Rift Tick
# Run as rift marker entity, at rift position
# Pull entities toward center, damage every 10 ticks, collapse when timer=0

# Decrement timer
scoreboard players remove @s ec.sp_timer 1

# === GRAVITATIONAL PULL ===
# Pull all nearby hostiles toward rift center each tick
# Normal: 4-block radius, Spirit: 6-block radius
# Use facing + tp to move entities toward rift
execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s facing entity @e[tag=ec.sp_rift,sort=nearest,limit=1,distance=..20] feet positioned as @s run tp @s ^ ^ ^0.4

# === DAMAGE (every 10 ticks = 2 damage) ===
execute store result score #rift_mod ec.temp run scoreboard players get @s ec.sp_timer
scoreboard players operation #rift_mod ec.temp %= #10 ec.const
execute if score #rift_mod ec.temp matches 0 run execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 2 minecraft:magic

# === VFX ===
# Swirling void particles
particle portal ~ ~0.5 ~ 1.5 0.8 1.5 0.8 8
particle reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.3 3

# Damage tick flash
execute if score #rift_mod ec.temp matches 0 run particle dust{color:[0.4,0.0,0.8],scale:1.5} ~ ~0.5 ~ 2.0 0.5 2.0 0.01 10

# SFX (every 20 ticks)
execute store result score #rift_sfx ec.temp run scoreboard players get @s ec.sp_timer
scoreboard players operation #rift_sfx ec.temp %= #20 ec.const
execute if score #rift_sfx ec.temp matches 0 run playsound minecraft:block.portal.ambient player @a ~ ~ ~ 0.6 1.5

# === COLLAPSE CHECK ===
execute if score @s ec.sp_timer matches ..0 run function evercraft:spirit/abilities/voidpiercer/rift_collapse
