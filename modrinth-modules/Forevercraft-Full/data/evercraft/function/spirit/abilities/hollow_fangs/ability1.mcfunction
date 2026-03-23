# Hollow Fangs — Shadow Step (Right-click, 8s CD)
# Teleport behind nearest hostile within 15 blocks
# Apply 3s Invisibility + next hit deals 3x damage

# Set cooldown (160 ticks = 8 seconds; spirit tier: 80 ticks = 4 seconds)
execute if score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_cd1 80
execute unless score @s ec.sp_tier matches 7 run scoreboard players set @s ec.sp_cd1 160

# Find nearest hostile mob
tag @e[type=!player,type=!armor_stand,type=!item,type=!marker,type=!interaction,type=!text_display,type=!painting,type=!item_frame,type=!glow_item_frame,distance=..15,limit=1,sort=nearest] add ec.sp_target

# Check if a target was found
execute unless entity @e[tag=ec.sp_target,limit=1] run return run function evercraft:spirit/abilities/hollow_fangs/shadow_step_fail

# Teleport behind the target (2 blocks behind, facing the target)
execute at @e[tag=ec.sp_target,limit=1] run tp @s ^ ^ ^-2 facing entity @e[tag=ec.sp_target,limit=1]

# Apply Invisibility (3 seconds)
effect give @s invisibility 3 0 true

# Set bonus damage flag (next hit within 3 seconds deals 3x)
tag @s add ec.sp_shadow_bonus
scoreboard players set @s ec.sp_timer 60

# VFX
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1.0 1.5
particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 30
execute at @e[tag=ec.sp_target,limit=1] run particle smoke ~ ~1 ~ 0.5 0.5 0.5 0.02 20

# Cleanup target tag
tag @e[tag=ec.sp_target] remove ec.sp_target

# Feedback
title @s actionbar [{"text":"Shadow Step!","color":"dark_purple","bold":true},{"text":" — next hit deals 3x damage","color":"light_purple"}]
