# Phantom Form - Phantom 4pc ability
# Become invisible and gain damage resistance

# Check for 4pc bonus
execute unless entity @s[tag=phantom_4pc] run return 0

# Visual and sound effects
playsound minecraft:entity.phantom.ambient player @a ~ ~ ~ 1 1.5
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.5 1.5
particle witch ~ ~1 ~ 1 1 1 0.1 50 force
particle reverse_portal ~ ~1 ~ 0.5 1 0.5 0.05 30 force

# Apply phantom form effects
effect give @s invisibility 10 0 false
effect give @s resistance 10 1 false
effect give @s speed 10 1 false

# Feedback
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Phantom Form activated!",color:"dark_purple"}]
