# Earthsong Mastery — "Quarry Pulse" (60s CD)
# Raycast to target, mine 9x9x9 cube, teleport drops to player

scoreboard players set @s ec.st_cd 1200

# Title + sound
title @s actionbar [{"text":"Quarry Pulse","color":"gold","bold":true}]
playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 0.5 0.5
playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.3 0.5

# Mine a 9x9x9 cube around the player's look target
# Use fill to clear, drops aren't possible with fill so give materials directly
execute store result score #st_quarry ec.var run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:base_stone_overworld
execute if score #st_quarry ec.var matches 1.. run give @s cobblestone 64
execute if score #st_quarry ec.var matches 65.. run give @s cobblestone 64
execute if score #st_quarry ec.var matches 129.. run give @s cobblestone 64
execute store result score #st_quarry2 ec.var run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:coal_ores
execute if score #st_quarry2 ec.var matches 1.. run give @s coal 16
execute store result score #st_quarry2 ec.var run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:iron_ores
execute if score #st_quarry2 ec.var matches 1.. run give @s iron_ingot 8
execute store result score #st_quarry2 ec.var run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:gold_ores
execute if score #st_quarry2 ec.var matches 1.. run give @s gold_ingot 4
execute store result score #st_quarry2 ec.var run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:diamond_ores
execute if score #st_quarry2 ec.var matches 1.. run give @s diamond 2
execute store result score #st_quarry2 ec.var run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:copper_ores
execute if score #st_quarry2 ec.var matches 1.. run give @s raw_copper 8
execute store result score #st_quarry2 ec.var run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:lapis_ores
execute if score #st_quarry2 ec.var matches 1.. run give @s lapis_lazuli 8
execute store result score #st_quarry2 ec.var run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:redstone_ores
execute if score #st_quarry2 ec.var matches 1.. run give @s redstone 8
execute store result score #st_quarry2 ec.var run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace #minecraft:emerald_ores
execute if score #st_quarry2 ec.var matches 1.. run give @s emerald 2
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace deepslate
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace granite
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace diorite
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace andesite
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace tuff
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace dirt
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 air replace gravel

# Big VFX
particle minecraft:explosion ~ ~ ~ 4 4 4 0.1 20
particle minecraft:campfire_cosy_smoke ~ ~ ~ 3 3 3 0.05 30

# Grant crafting affinity XP: 100 for mastery use
function evercraft:craft_affinity/grant {class_id:1, delta:100}
