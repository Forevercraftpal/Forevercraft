# Ender 4-Piece Bonus: Void Sight + Blink ability
# Master of teleportation

# Check if this is the first time getting 4pc
execute unless entity @s[tag=ender_4pc] run function evercraft:artifacts/sets/ender/grant_ability_item
tag @s add ender_4pc

# Void sight - see in darkness and through walls (glowing nearby entities)
execute as @e[type=#evercraft:hostile,distance=..16] run effect give @s glowing 3 0 false

# Ender particles
particle portal ~ ~1 ~ 0.3 0.5 0.3 0.1 3 force @s
