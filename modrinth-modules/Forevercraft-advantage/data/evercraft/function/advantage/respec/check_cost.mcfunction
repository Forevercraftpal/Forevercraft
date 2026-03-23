# Check for Seed of Forgetting in inventory
# Uses clear count 0 to check without removing
execute store result score #seed_count adv.temp run clear @s minecraft:wheat_seeds[custom_data~{seed_of_forgetting:1b}] 0

execute if score #seed_count adv.temp matches 1.. run scoreboard players set #respec_ok adv.temp 1
execute if score #seed_count adv.temp matches 1.. run return 0

scoreboard players set #respec_ok adv.temp 0
tellraw @s [{text:"✦ ",color:"gold"},{text:"You need a ",color:"red"},{text:"Seed of Forgetting",color:"dark_purple",bold:true},{text:" to respec. Visit the Nymph!",color:"red"}]
