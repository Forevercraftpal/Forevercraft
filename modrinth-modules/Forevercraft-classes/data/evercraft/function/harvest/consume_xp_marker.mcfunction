# Harvest XP: Award 1 XP per crop harvested and clear marker item
# Triggered by advancement: evercraft:harvest/xp_reward

advancement revoke @s only evercraft:harvest/xp_reward
clear @s stone_button[custom_data~{ec_harvest_xp:true}] 1
experience add @s 1 points

# 0.1% chance for a Forever Coin per crop harvested
execute store result score #hc_crop_coin ec.temp run random value 1..1000
execute if score #hc_crop_coin ec.temp matches 1 run scoreboard players add @s ec.coins 1
execute if score #hc_crop_coin ec.temp matches 1 run scoreboard players add #rm_coins ec.var 1
execute if score #hc_crop_coin ec.temp matches 1 run tellraw @s [{text:"  ★ ",color:"#E0B0FF"},{text:"+1 Forever Coin",color:"#E0B0FF"},{text:" — there's something shiny inside of the roots...",color:"gray",italic:true}]
execute if score #hc_crop_coin ec.temp matches 1 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.3 1.5
