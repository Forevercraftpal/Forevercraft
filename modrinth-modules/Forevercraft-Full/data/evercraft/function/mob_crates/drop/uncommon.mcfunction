# Mob Crates - Drop Uncommon (rarity mob kill)

advancement revoke @s only evercraft:mob_crates/killed_uncommon
# Debug mode: guaranteed drop
execute if score #debug_mob_drops ec.debug matches 1 run function evercraft:mob_crates/spawn/uncommon
execute if score #debug_mob_drops ec.debug matches 1 run return 0
execute if predicate {"condition":"minecraft:random_chance","chance":0.25} run function evercraft:mob_crates/spawn/uncommon
# Looting bonus: extra crate roll (+0.5% per level, max +2.5% at Looting 5)
execute if predicate evercraft:mob_crates/enchantments/looting_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} run function evercraft:mob_crates/spawn/uncommon
execute unless predicate evercraft:mob_crates/enchantments/looting_5 if predicate evercraft:mob_crates/enchantments/looting_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} run function evercraft:mob_crates/spawn/uncommon
execute unless predicate evercraft:mob_crates/enchantments/looting_4 if predicate evercraft:mob_crates/enchantments/looting_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} run function evercraft:mob_crates/spawn/uncommon
execute unless predicate evercraft:mob_crates/enchantments/looting_3 if predicate evercraft:mob_crates/enchantments/looting_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} run function evercraft:mob_crates/spawn/uncommon
execute unless predicate evercraft:mob_crates/enchantments/looting_2 if predicate evercraft:mob_crates/enchantments/looting_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} run function evercraft:mob_crates/spawn/uncommon
# Bonus drops — insert into the spawned crate barrel
execute at @s if block ~ ~ ~ minecraft:barrel run loot insert ~ ~ ~ loot evercraft:mob_crates/bonus/uncommon
