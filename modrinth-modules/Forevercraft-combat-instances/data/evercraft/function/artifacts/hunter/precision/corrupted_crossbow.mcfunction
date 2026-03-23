# Blight — Wither + Poison AoE (5 blocks)
# @s = player

# Find the hit entity and execute AoE at their location
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/hunter/precision/blight_aoe

# Feedback
tellraw @s [{"text":"[Hunter] ","color":"dark_aqua"},{"text":"Blight! ","color":"dark_purple","bold":true},{"text":"Corruption spreads!","color":"light_purple"}]
