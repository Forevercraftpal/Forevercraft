# Ignition — Fire AoE at impact (4 blocks)
# @s = player

# Find the hit entity and execute AoE at their location
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/hunter/precision/ignition_aoe

# Feedback
tellraw @s [{"text":"[Hunter] ","color":"dark_aqua"},{"text":"Ignition! ","color":"gold","bold":true},{"text":"Flames erupt!","color":"red"}]
