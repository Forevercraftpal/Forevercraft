# Process Uncommon Harvest Crate catch

# Dream Surge Event: upgrade to Ornate+ instead
execute if score #ec_event_active ec.var matches 1 run clear @s iron_nugget[custom_data={hc_stat:true,hc_rarity:"uncommon"}] 1
execute if score #ec_event_active ec.var matches 1 run advancement revoke @s only evercraft:harvest/core/uncommon/process
execute if score #ec_event_active ec.var matches 1 run function evercraft:event/roll_event_crate_harvest
execute if score #ec_event_active ec.var matches 1 run return 0

# Check if inventory is full before giving items
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

tellraw @s {text:"Something fell from the harvest!",color:"gray",italic:true}
clear @s iron_nugget[custom_data={hc_stat:true,hc_rarity:"uncommon"}] 1

# Update statistics
scoreboard players add @s adv.stat_harvest 1
scoreboard players add crates_harvested hc.global_stats 1
scoreboard players add @s hc.total_crates 1
scoreboard players add uncommon_crates hc.global_stats 1
scoreboard players add @s hc.uncommon 1

# Award XP for harvesting
experience add @s 3 points

# Gathering extra crops proc (Advantage Tree)
execute if score @s adv.gathering matches 1.. run function evercraft:advantage/gathering/extra_crops

# Give the actual crate
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
# Fortune bonus: extra crate roll (+0.5% per level, max +2.5% at Fortune 5)
execute if predicate evercraft:harvest/enchantments/fortune_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
execute if predicate evercraft:harvest/enchantments/fortune_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
execute unless predicate evercraft:harvest/enchantments/fortune_5 if predicate evercraft:harvest/enchantments/fortune_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
execute unless predicate evercraft:harvest/enchantments/fortune_5 if predicate evercraft:harvest/enchantments/fortune_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
execute unless predicate evercraft:harvest/enchantments/fortune_4 if predicate evercraft:harvest/enchantments/fortune_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
execute unless predicate evercraft:harvest/enchantments/fortune_4 if predicate evercraft:harvest/enchantments/fortune_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
execute unless predicate evercraft:harvest/enchantments/fortune_3 if predicate evercraft:harvest/enchantments/fortune_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
execute unless predicate evercraft:harvest/enchantments/fortune_3 if predicate evercraft:harvest/enchantments/fortune_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
execute unless predicate evercraft:harvest/enchantments/fortune_2 if predicate evercraft:harvest/enchantments/fortune_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
execute unless predicate evercraft:harvest/enchantments/fortune_2 if predicate evercraft:harvest/enchantments/fortune_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/uncommon/1
# Warn if inventory was full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your harvest crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
# 1/3000 chance for Tiller's Dream Petal (permanent +1 dream rate)
execute unless score @s ec.dream_petal_count matches 1.. store result score #dream_roll ec.temp run random value 1..3000
execute unless score @s ec.dream_petal_count matches 1.. if score #dream_roll ec.temp matches 1 run loot give @s loot evercraft:items/tillers_dream_petal
execute unless score @s ec.dream_petal_count matches 1.. if score #dream_roll ec.temp matches 1 run tellraw @s [{text:"✦ ",color:"gold"},{text:"A ",color:"yellow"},{text:"Tiller's Dream Petal",color:"dark_green",bold:true},{text:" fell from the harvest!",color:"yellow"}]
advancement revoke @s only evercraft:harvest/core/uncommon/process
