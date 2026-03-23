# Grant Exquisite Harvest Crate (Dream Rate >= 10 verified)
tellraw @s [{text:"⚡ ",color:"gold"},{text:"Something extraordinary fell from the harvest!",color:"gold",italic:true}]
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 2 1 1

scoreboard players add crates_harvested hc.global_stats 1
scoreboard players add @s hc.total_crates 1
scoreboard players add exquisite_crates hc.global_stats 1
scoreboard players add @s hc.exquisite 1

# Gathering extra crops proc (Advantage Tree)
execute if score @s adv.gathering matches 1.. run function evercraft:advantage/gathering/extra_crops

# Check if inventory is full before giving items
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
# Fortune bonus: extra crate roll (+0.5% per level, max +2.5% at Fortune 5)
execute if predicate evercraft:harvest/enchantments/fortune_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
execute if predicate evercraft:harvest/enchantments/fortune_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
execute unless predicate evercraft:harvest/enchantments/fortune_5 if predicate evercraft:harvest/enchantments/fortune_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
execute unless predicate evercraft:harvest/enchantments/fortune_5 if predicate evercraft:harvest/enchantments/fortune_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
execute unless predicate evercraft:harvest/enchantments/fortune_4 if predicate evercraft:harvest/enchantments/fortune_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
execute unless predicate evercraft:harvest/enchantments/fortune_4 if predicate evercraft:harvest/enchantments/fortune_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
execute unless predicate evercraft:harvest/enchantments/fortune_3 if predicate evercraft:harvest/enchantments/fortune_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
execute unless predicate evercraft:harvest/enchantments/fortune_3 if predicate evercraft:harvest/enchantments/fortune_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
execute unless predicate evercraft:harvest/enchantments/fortune_2 if predicate evercraft:harvest/enchantments/fortune_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
execute unless predicate evercraft:harvest/enchantments/fortune_2 if predicate evercraft:harvest/enchantments/fortune_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
# Warn if inventory was full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your harvest crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
