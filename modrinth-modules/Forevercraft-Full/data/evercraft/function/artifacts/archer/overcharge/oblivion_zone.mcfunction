# Oblivion — Create Void Zone
# @s = hit entity, position = hit entity location

# Apply devastating effects to all entities in 7-block radius
effect give @e[type=!player,distance=..7] wither 100 2 false
effect give @e[type=!player,distance=..7] levitation 100 1 false
effect give @e[type=!player,distance=..7] slowness 100 3 false
effect give @e[type=!player,distance=..7] glowing 100 0 false

# Summon marker for collapse burst
summon marker ~ ~ ~ {Tags:["ec.ar_oblivion"]}

# Massive void particles
particle dragon_breath ~ ~1 ~ 7 2 7 0.02 80
particle portal ~ ~1 ~ 7 2 7 0.5 100
particle reverse_portal ~ ~2 ~ 5 1 5 0.3 50
particle end_rod ~ ~3 ~ 3 2 3 0.01 20

# Sound
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2 0.3
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1.5

# Schedule collapse burst (100 ticks = 5 seconds)
schedule function evercraft:artifacts/archer/overcharge/oblivion_collapse 100t

# Feedback
tellraw @a [{"text":"[Gaster Blaster] ","color":"gold"},{"text":"OBLIVION ","color":"dark_purple","bold":true},{"text":"— The void consumes all!","color":"light_purple"}]
