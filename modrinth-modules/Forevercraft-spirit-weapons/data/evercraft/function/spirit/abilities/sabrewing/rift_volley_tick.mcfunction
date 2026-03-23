# Soulstring — Rift Volley Per-Tick Processing
# Run as rift marker entity, at its position
# Pull nearby mobs inward, deal damage, particles, expire when timer hits 0

# Decrement timer
scoreboard players remove @s ec.sp_timer 1

# Pull nearby mobs toward rift center (2-block radius)
# Use tp facing to pull entities inward
execute as @e[distance=0.5..3,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s facing entity @e[tag=ec.sp_rift,limit=1,sort=nearest] feet run tp @s ^ ^ ^0.4

# Damage every 10 ticks (4 damage per pulse)
execute store result score #rift_mod ec.temp run scoreboard players get @s ec.sp_timer
scoreboard players operation #rift_mod ec.temp %= #10 ec.const
execute if score #rift_mod ec.temp matches 0 run execute as @e[distance=..3,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 4 minecraft:magic

# VFX — swirling void particles
particle reverse_portal ~ ~0.5 ~ 1.0 0.5 1.0 0.05 5
particle dust{color:[0.2,0.0,0.4],scale:1.0} ~ ~0.5 ~ 1.5 0.5 1.5 0.02 3
particle enchant ~ ~0.5 ~ 1.0 0.5 1.0 0.1 2

# SFX every 20 ticks
execute store result score #rift_sfx ec.temp run scoreboard players get @s ec.sp_timer
scoreboard players operation #rift_sfx ec.temp %= #20 ec.const
execute if score #rift_sfx ec.temp matches 0 run playsound minecraft:block.portal.ambient player @a ~ ~ ~ 0.4 2.0

# Expire when timer hits 0
execute if score @s ec.sp_timer matches ..0 run particle poof ~ ~0.5 ~ 0.5 0.5 0.5 0.05 10
execute if score @s ec.sp_timer matches ..0 run kill @s
