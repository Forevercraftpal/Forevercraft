# Firebrand — Tyrant's Rage Activate (below 30% HP)
# +50% damage, +30% attack speed, 15% lifesteal

tag @s add ec.sp_tyrant_rage

# +50% damage
attribute @s attack_damage modifier add evercraft:tyrant_rage_damage 0.5 add_multiplied_total
# +30% attack speed
attribute @s attack_speed modifier add evercraft:tyrant_rage_speed 0.3 add_multiplied_total

# Visual feedback
playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1.0 0.5
title @s actionbar [{"text":"TYRANT'S RAGE!","color":"dark_red","bold":true}]
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 20
