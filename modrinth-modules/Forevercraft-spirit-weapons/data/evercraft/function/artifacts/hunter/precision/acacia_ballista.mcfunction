# Impale — Massive single-target damage + pin
# @s = player

# Find the hit entity and apply effects
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/hunter/precision/impale_hit

# Feedback
tellraw @s [{"text":"[Hunter] ","color":"dark_aqua"},{"text":"Impale! ","color":"blue","bold":true},{"text":"Target pinned!","color":"gray"}]
