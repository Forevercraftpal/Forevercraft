# Voidpiercer — Phase Bolt
# Fire a homing void arrow at nearest hostile within 20 blocks
# Run as player, at player position

# Consume a bolt charge
scoreboard players remove @s ec.sp_charges 1

# Summon a high-damage arrow aimed at nearest hostile
execute at @s anchored eyes positioned ^ ^ ^1 run summon arrow ~ ~ ~ {Tags:["ec.sp_phase_arrow"],damage:6.0d,pickup:0b,life:1180s,PersistenceRequired:true,Color:-6750208}

# Give the arrow velocity toward nearest hostile
execute as @e[tag=ec.sp_phase_arrow,limit=1] at @s facing entity @e[type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..20,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=ec.sp_phase_arrow,limit=1] at @s run data modify entity @s Motion set value [0.0d,0.0d,0.0d]
execute as @e[tag=ec.sp_phase_arrow,limit=1] at @s positioned ^ ^ ^3.0 run tp @s ~ ~ ~
execute as @e[tag=ec.sp_phase_arrow,limit=1] at @s run data modify entity @s Motion set value [0.0d,0.0d,0.0d]

# Alternative: just damage nearest hostile directly (more reliable)
damage @e[type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..20,limit=1,sort=nearest] 6 minecraft:magic by @s

# Clean up arrow entity (we used direct damage instead)
kill @e[tag=ec.sp_phase_arrow]

# VFX — bolt trail
execute at @e[type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..20,limit=1,sort=nearest] run particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.5 8
execute at @e[type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..20,limit=1,sort=nearest] run particle dust{color:[0.3,0.0,0.7],scale:1.2} ~ ~0.5 ~ 0.4 0.4 0.4 0.01 6

# SFX
playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 0.8 1.5

# Actionbar feedback
title @s actionbar [{"text":"Void Bolt ","color":"dark_purple"},{"score":{"name":"@s","objective":"ec.sp_charges"},"color":"light_purple"},{"text":" remaining","color":"dark_purple"}]
