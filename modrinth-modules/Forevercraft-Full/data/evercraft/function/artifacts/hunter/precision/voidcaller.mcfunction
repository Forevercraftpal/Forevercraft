# Rift — Void gravity well at target location
# @s = player

# Find the hit entity and create rift at their location
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/hunter/precision/rift_create

# Feedback
tellraw @s [{"text":"[Hunter] ","color":"dark_aqua"},{"text":"Rift! ","color":"dark_purple","bold":true},{"text":"The void opens...","color":"light_purple"}]
