# Resonance — Damage echoes to nearby mobs
# @s = player

# Find the hit entity and execute AoE at their location
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/hunter/precision/resonance_aoe

# Feedback
tellraw @s [{"text":"[Hunter] ","color":"dark_aqua"},{"text":"Resonance! ","color":"yellow","bold":true},{"text":"Echo reverberates!","color":"gold"}]
