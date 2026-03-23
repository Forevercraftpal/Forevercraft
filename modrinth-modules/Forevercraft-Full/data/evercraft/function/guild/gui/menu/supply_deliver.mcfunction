# Guild Menu — Deliver supply drop to a target guild member
# @s = random online member of target guild, at their position
# #supply_tier ec.temp = 1/2/3
# Only deliver to the first found player

execute if score #supply_found ec.temp matches 1 run return 0
scoreboard players set #supply_found ec.temp 1

# Drop loot at this player's feet
execute if score #supply_tier ec.temp matches 1 run loot spawn ~ ~ ~ loot evercraft:guild/supply/rations
execute if score #supply_tier ec.temp matches 2 run loot spawn ~ ~ ~ loot evercraft:guild/supply/armaments
execute if score #supply_tier ec.temp matches 3 run loot spawn ~ ~ ~ loot evercraft:guild/supply/war_chest

# Notify recipient
execute if score #supply_tier ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your guild received a supply drop: ",color:"green"},{text:"Rations",color:"green",bold:true},{text:"!",color:"green"}]
execute if score #supply_tier ec.temp matches 2 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your guild received a supply drop: ",color:"yellow"},{text:"Armaments",color:"yellow",bold:true},{text:"!",color:"yellow"}]
execute if score #supply_tier ec.temp matches 3 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your guild received a supply drop: ",color:"light_purple"},{text:"War Chest",color:"light_purple",bold:true},{text:"!",color:"light_purple"}]

playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1.0 1.0
