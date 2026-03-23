# Grant Mythical Fishing Crate (Dream Rate >= 17.5 verified)
tellraw @a [{text:"★ ★ ★ ",color:"gold"},{selector:"@s",color:"aqua",bold:true},{text:" has discovered a ",color:"gold"},{text:"MYTHICAL",color:"gold",bold:true,obfuscated:false},{text:" crate! ★ ★ ★",color:"gold"}]
title @s subtitle {text:"You found a MYTHICAL crate!",color:"gold",bold:true}
title @s title {text:"★ MYTHICAL ★",color:"gold",bold:true}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 2 0.8 1
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 0.3 1.5 1

scoreboard players add crates_fished fc.global_stats 1
scoreboard players add @s fc.total_crates 1
scoreboard players add mythical_crates fc.global_stats 1
scoreboard players add @s fc.mythical 1

# Check inventory space
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/mythical/1
# Luck of the Sea bonus: extra crate roll (+0.5% per level, max +2.5% at LotS 5)
execute if predicate evercraft:fishing/enchantments/luck_of_the_sea_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute if predicate evercraft:fishing/enchantments/luck_of_the_sea_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_5 if predicate evercraft:fishing/enchantments/luck_of_the_sea_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_5 if predicate evercraft:fishing/enchantments/luck_of_the_sea_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_4 if predicate evercraft:fishing/enchantments/luck_of_the_sea_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_4 if predicate evercraft:fishing/enchantments/luck_of_the_sea_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_3 if predicate evercraft:fishing/enchantments/luck_of_the_sea_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_3 if predicate evercraft:fishing/enchantments/luck_of_the_sea_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_2 if predicate evercraft:fishing/enchantments/luck_of_the_sea_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute unless predicate evercraft:fishing/enchantments/luck_of_the_sea_2 if predicate evercraft:fishing/enchantments/luck_of_the_sea_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/mythical/1
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your fishing crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
