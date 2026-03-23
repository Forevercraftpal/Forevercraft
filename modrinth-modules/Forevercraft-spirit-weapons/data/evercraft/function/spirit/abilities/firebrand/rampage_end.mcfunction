# Firebrand — Rampage End
# Clean up Rampage state

tag @s remove ec.sp_rampage_active
scoreboard players set @s ec.sp_rampage 0
scoreboard players set @s ec.sp_rampage_dmg 0

# Remove speed buff
effect clear @s speed

# Remove damage modifier
attribute @s attack_damage modifier remove evercraft:rampage_damage

# Feedback
playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 0.8 1.0
title @s actionbar [{"text":"Rampage ended","color":"gray"}]
