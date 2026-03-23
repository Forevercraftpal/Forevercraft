# Autumn Crop Bonus — 50% chance for extra crop drop
# Run as the player, at their position. $(crop) = wheat, carrots, potatoes, beetroots, nether_wart
# Called from crop_harvest/on_break during autumn

$execute store result score @s ec.temp run random value 1..2
$execute if score @s ec.temp matches 1 run give @s $(crop) 1
$execute if score @s ec.temp matches 1 run tellraw @s [{text:"[Harvest] ",color:"gold"},{text:"Autumn's bounty! Extra crop harvested.",color:"yellow"}]
