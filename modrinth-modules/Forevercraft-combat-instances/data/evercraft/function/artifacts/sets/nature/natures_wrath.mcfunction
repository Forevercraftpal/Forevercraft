# Nature - Nature's Wrath Ability
# Summon vines and thorns to entangle and damage enemies

# Sound and particles
playsound minecraft:block.azalea_leaves.break player @a ~ ~ ~ 1 0.5
playsound minecraft:block.flowering_azalea.break player @a ~ ~ ~ 1 0.8
particle happy_villager ~ ~1 ~ 3 1 3 0.1 100 force
particle composter ~ ~ ~ 2 0.5 2 0.05 50 force

# Root and damage nearby enemies
execute as @e[type=#evercraft:hostile,distance=..8] at @s run function evercraft:artifacts/sets/nature/vine_trap

# Heal self and nearby allies
effect give @s instant_health 1 1
effect give @s regeneration 10 1 false
execute as @a[distance=0.1..6] run effect give @s regeneration 5 0 false

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Nature's Wrath!",color:"green"}]
