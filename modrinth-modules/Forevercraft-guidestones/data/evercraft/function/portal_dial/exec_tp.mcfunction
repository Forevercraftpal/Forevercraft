# Portal Dial — Execute teleport to lodestone location
# Called with: eden:temp portal_dial.tp {dimension, x, y, z}

$execute in $(dimension) run tp @s $(x) $(y) $(z)

execute at @s run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 0.5 0.5
execute at @s run particle minecraft:reverse_portal ~ ~0.5 ~ 0.3 0.7 0.3 0 100

tellraw @s [{text:"▊ ",color:"dark_purple"},{text:"Warped to lodestone!",color:"gold"}]

# Clean up temp data
data remove storage eden:temp portal_dial
