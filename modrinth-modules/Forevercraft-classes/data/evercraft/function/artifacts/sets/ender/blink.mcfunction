# Ender - Blink Ability
# Teleport forward in the direction you're facing

# Sound and particles at origin
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 0.8
particle reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 50 force

# Teleport forward (8 blocks in facing direction)
execute at @s anchored eyes run tp @s ^ ^ ^8

# Sound and particles at destination
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.2
particle portal ~ ~1 ~ 0.5 1 0.5 0.5 100 force
particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 30 force

# Brief invulnerability after blink
effect give @s resistance 1 4 false

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Blink!",color:"dark_purple"}]
