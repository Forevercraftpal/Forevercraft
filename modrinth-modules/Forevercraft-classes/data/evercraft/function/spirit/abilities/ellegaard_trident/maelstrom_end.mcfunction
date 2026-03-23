# Soul Piercer — Maelstrom End
# Kill maelstrom marker, final burst of damage + knockback

# Owner check for multiplayer marker filtering
scoreboard players operation #owner_check ec.temp = @s ec.sp_uid

# Final burst: 6 damage to all in radius
execute as @e[tag=ec.sp_maelstrom_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 6 minecraft:drown

# Launch enemies upward (water eruption)
execute as @e[tag=ec.sp_maelstrom_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run data modify entity @s Motion set value [0.0d, 1.2d, 0.0d]

# VFX — water explosion
execute as @e[tag=ec.sp_maelstrom_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle splash ~ ~1 ~ 4.0 2.0 4.0 0.2 60
execute as @e[tag=ec.sp_maelstrom_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run particle bubble ~ ~2 ~ 3.0 2.0 3.0 0.15 40
execute as @e[tag=ec.sp_maelstrom_marker] if score @s ec.sp_owner = #owner_check ec.temp at @s run playsound minecraft:entity.generic.splash player @a ~ ~ ~ 1.2 0.5

# Kill marker
execute as @e[tag=ec.sp_maelstrom_marker] if score @s ec.sp_owner = #owner_check ec.temp run kill @s

# Remove active tag
tag @s remove ec.sp_maelstrom_active

title @s actionbar [{"text":"Maelstrom dissipates","color":"dark_aqua"}]
