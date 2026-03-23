# Crystal - Crystal Shatter Ability
# Create a crystalline explosion that damages and slows enemies

# Sound
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.5
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.8

# Crystal explosion particles - multiple colors
particle dust{color:[1.0,0.5,1.0],scale:1.5} ~ ~1 ~ 3 1 3 0.1 80 force
particle dust{color:[0.5,0.8,1.0],scale:1.2} ~ ~1 ~ 2 1 2 0.1 50 force
particle dust{color:[0.8,1.0,0.5],scale:1.0} ~ ~1 ~ 2 0.5 2 0.1 30 force
particle end_rod ~ ~1 ~ 2 1 2 0.1 30 force

# Damage and crystallize nearby enemies
execute as @e[type=#evercraft:hostile,distance=..7] at @s run function evercraft:artifacts/sets/crystal/crystallize

# Shield self with absorption
effect give @s absorption 15 2 false
effect give @s resistance 10 2 false

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Crystal Shatter!",color:"light_purple"}]
