# Process Uncommon Crate catch
tellraw @s {text:"Something popped out of the water!",color:"gray",italic:true}
clear @s iron_nugget[custom_data={fc_stat:true,fc_rarity:"uncommon"}] 1

# Update statistics
scoreboard players add crates_fished fc.global_stats 1
scoreboard players add @s fc.total_crates 1
scoreboard players add uncommon_crates fc.global_stats 1
scoreboard players add @s fc.uncommon 1

# Check inventory space
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Give the actual crate
execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
# Luck of the Sea bonus: extra crate roll (+0.5% per level, max +2.5% at LotS 5)
execute if predicate evercraft:fishing/enchantments/luck_of_the_sea_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute if predicate evercraft:fishing/enchantments/luck_of_the_sea_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_5 if predicate evercraft:fishing/enchantments/luck_of_the_sea_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_5 if predicate evercraft:fishing/enchantments/luck_of_the_sea_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_4 if predicate evercraft:fishing/enchantments/luck_of_the_sea_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_4 if predicate evercraft:fishing/enchantments/luck_of_the_sea_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_3 if predicate evercraft:fishing/enchantments/luck_of_the_sea_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_3 if predicate evercraft:fishing/enchantments/luck_of_the_sea_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_2 if predicate evercraft:fishing/enchantments/luck_of_the_sea_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_2 if predicate evercraft:fishing/enchantments/luck_of_the_sea_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/uncommon/1
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your fishing crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
advancement revoke @s only evercraft:fishing/core/uncommon/process
