# Zephyr Edge — Cyclone End (burst finish)
# Launch all nearby enemies away + 6 damage

tag @s remove ec.sp_cyclone_active
scoreboard players set @s ec.sp_timer 0

# Final burst: damage + knockback
execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] run damage @s 6 minecraft:player_attack by @p[sort=nearest,limit=1]

# Launch enemies outward (give them upward + outward motion)
execute as @e[distance=..6,type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s run data modify entity @s Motion set value [0.0d, 1.0d, 0.0d]

# Clear resistance
effect clear @s resistance

# VFX
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 1.5
particle explosion ~ ~1 ~ 2 1 2 0.1 10
particle cloud ~ ~0.5 ~ 4 0.5 4 0.1 30

title @s actionbar [{"text":"Cyclone burst!","color":"aqua"}]
