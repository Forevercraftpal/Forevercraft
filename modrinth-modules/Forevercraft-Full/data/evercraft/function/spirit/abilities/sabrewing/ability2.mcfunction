# Soulstring — Singularity Arrow (Sneak+Right-click, 25s CD = 500 ticks)
# Create a black hole at nearest hostile within 30 blocks, or 15 blocks forward
# 8-block pull radius (spirit: 12), persists 3 seconds (60 ticks)
# Final collapse: 25 damage burst (spirit: 40)

# Set cooldown
scoreboard players set @s ec.sp_cd2 500

# SFX — ominous void opening
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.6 0.3
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1.0 0.4
playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.8 0.3

# Try to target nearest hostile within 30 blocks
execute at @e[type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..30,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["ec.sp_singularity","ec.sp_temp"],CustomName:"singularity"}

# If no target found, place 15 blocks ahead
execute unless entity @e[tag=ec.sp_temp,limit=1] positioned ^ ^0.5 ^15 run summon marker ~ ~ ~ {Tags:["ec.sp_singularity","ec.sp_temp"],CustomName:"singularity"}

# Set timer and owner — 60 ticks (3 seconds)
execute as @e[tag=ec.sp_temp,limit=1] run scoreboard players set @s ec.sp_timer 60
scoreboard players operation @e[tag=ec.sp_temp] ec.sp_owner = @s ec.sp_uid
tag @e[tag=ec.sp_temp] remove ec.sp_temp

# Initial VFX at singularity
execute as @e[tag=ec.sp_singularity,limit=1] at @s run particle reverse_portal ~ ~1 ~ 2.0 2.0 2.0 0.2 80
execute as @e[tag=ec.sp_singularity,limit=1] at @s run particle dust{color:[0.1,0.0,0.2],scale:2.0} ~ ~1 ~ 3.0 3.0 3.0 0.1 40

title @s actionbar [{"text":"SINGULARITY!","color":"dark_purple","bold":true}]
