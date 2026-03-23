# Biome Node: Cancel active mining (moved too far)
# Run as player

# Clear actionbar
title @s actionbar {text:""}
scoreboard players set @s ec.cf_mining 0
scoreboard players set @s ec.cf_mine_prog 0
tellraw @s [{text:"[Craftforever] ",color:"#8BC34A"},{text:"You moved too far away...",color:"gray",italic:true}]
playsound minecraft:block.stone.break master @s ~ ~ ~ 0.4 0.6
