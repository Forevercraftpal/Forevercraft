# Ocean - Tidal Wave Ability
# Unleash a devastating wave that pushes and damages enemies

# Sound and particles
playsound minecraft:entity.generic.splash player @a ~ ~ ~ 1 0.5
playsound minecraft:ambient.underwater.enter player @s ~ ~ ~ 1 0.8
particle bubble_pop ~ ~ ~ 3 1 3 0.1 100 force
particle splash ~ ~ ~ 3 0.5 3 0.1 200 force

# Push back and damage nearby enemies
execute as @e[type=#evercraft:hostile,distance=..6] at @s run function evercraft:artifacts/sets/ocean/tidal_wave_hit

# Temporary boost to the player
effect give @s speed 5 1 false
effect give @s resistance 3 0 false

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Tidal Wave!",color:"dark_aqua"}]
