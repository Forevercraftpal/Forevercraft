# Drowned King Shield — "Tidal Curse"
# Slowness 2 to enemies within 5 blocks for 5s + Conduit Power 6s to self, 25s CD

# AoE slowness to nearby mobs
execute at @s as @e[type=!player,type=!item,distance=..5,limit=8,sort=nearest] run effect give @s slowness 5 1 false

# Conduit Power to self
effect give @s conduit_power 6 0 false

# Particles + sound
execute at @s run particle bubble ~ ~0.5 ~ 1.5 0.5 1.5 0.1 25
execute at @s run particle rain ~ ~1.5 ~ 1.0 0.3 1.0 0.1 15
execute at @s run playsound minecraft:ambient.underwater.enter master @a ~ ~ ~ 0.8 0.8
execute at @s run playsound minecraft:item.shield.block master @s ~ ~ ~ 0.5 0.9

# Set cooldown
scoreboard players set @s ec.tk_off_cd 25

# Actionbar feedback
title @s actionbar {"text":"Tidal Curse!","color":"dark_aqua","bold":true}
