# Dragonslayer Shield — "Dragon's Breath"
# AoE fire damage (3) to enemies within 4 blocks + Fire Resistance 5s to self, 20s CD

# AoE fire damage to nearby hostile mobs
execute at @s as @e[type=!player,type=!item,distance=..4,limit=8,sort=nearest] run damage @s 3 minecraft:in_fire

# Fire Resistance to self
effect give @s fire_resistance 5 0 false

# Particles + sound
execute at @s run particle flame ~ ~0.5 ~ 1.5 0.5 1.5 0.08 30
execute at @s run particle smoke ~ ~0.3 ~ 1.0 0.3 1.0 0.05 15
execute at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.8 0.7
execute at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.6 1.0

# Set cooldown
scoreboard players set @s ec.tk_off_cd 20

# Actionbar feedback
title @s actionbar {"text":"Dragon's Breath!","color":"gold","bold":true}
