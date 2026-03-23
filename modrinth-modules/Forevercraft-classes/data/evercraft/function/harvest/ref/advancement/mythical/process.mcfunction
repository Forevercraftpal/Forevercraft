# Process Mythical Harvest Crate
# Requires Dream Rate >= 25 — downgrade to Exquisite if insufficient
clear @s iron_nugget[custom_data={hc_stat:true,hc_rarity:"mythical"}] 1
advancement revoke @s only evercraft:harvest/core/mythical/process
scoreboard players add @s adv.stat_harvest 1

# Award XP for harvesting
experience add @s 15 points

# 1/3000 chance for Tiller's Dream Petal (permanent +1 dream rate)
execute unless score @s ec.dream_petal_count matches 1.. store result score #dream_roll ec.temp run random value 1..3000
execute unless score @s ec.dream_petal_count matches 1.. if score #dream_roll ec.temp matches 1 run loot give @s loot evercraft:items/tillers_dream_petal
execute unless score @s ec.dream_petal_count matches 1.. if score #dream_roll ec.temp matches 1 run tellraw @s [{text:"✦ ",color:"gold"},{text:"A ",color:"yellow"},{text:"Tiller's Dream Petal",color:"dark_green",bold:true},{text:" fell from the harvest!",color:"yellow"}]

# Check dream rate (scale 10: 25.0 dream rate = 250)
execute store result score @s ec.temp run attribute @s luck get 10
execute if score @s ec.temp matches 250.. run function evercraft:harvest/ref/advancement/mythical/grant
execute unless score @s ec.temp matches 250.. run function evercraft:harvest/ref/advancement/mythical/downgrade
