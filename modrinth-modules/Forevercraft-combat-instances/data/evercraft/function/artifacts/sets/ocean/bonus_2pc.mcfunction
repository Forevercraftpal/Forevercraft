# Ocean 2-Piece Bonus: Water Breathing + Dolphin's Grace
# Become one with the sea

# Tag player as having 2pc bonus
execute unless entity @s[tag=ocean_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ocean 2pc: ",color:"dark_aqua"},{text:"Water Breathing + Dolphin's Grace",color:"gray"}]
tag @s add ocean_2pc

# Apply water breathing and dolphin's grace
effect give @s water_breathing 3 0 false
effect give @s dolphins_grace 3 0 false
