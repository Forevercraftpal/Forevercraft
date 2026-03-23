# 25% chance for resistance 7 for 7 seconds when taking damage
execute store result score @s trim_coin_flip run random value 1..4
execute if score @s trim_coin_flip matches 1 run effect give @s resistance 7 6 false
execute if score @s trim_coin_flip matches 1 run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score @s trim_coin_flip matches 1 run particle minecraft:block{block_state:{Name:"minecraft:crying_obsidian"}} ~ ~1 ~ 0.3 0.5 0.3 0 10