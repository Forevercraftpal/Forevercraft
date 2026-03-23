# Mob Crates - Patron Common Kill
# 20% chance to spawn crate + looting bonus (scaled from base mob rates)

advancement revoke @s only evercraft:mob_crates/killed_patron_common

# Artifact kill tracking
function evercraft:artifacts/kill_track
# Debug mode: guaranteed drop
execute if score #debug_mob_drops ec.debug matches 1 run function evercraft:mob_crates/spawn/common
execute if score #debug_mob_drops ec.debug matches 1 run return 0
execute if predicate {"condition":"minecraft:random_chance","chance":0.20} run function evercraft:mob_crates/spawn/common
# Victorian P3: Spoils of War — second 20% roll for doubled spawn chance
execute if score @s adv.pa_vict3 matches 1 if predicate {"condition":"minecraft:random_chance","chance":0.20} run function evercraft:mob_crates/spawn/common
# Charm 2x: extra 20% roll when charm is active
execute if score @s ec.charm_timer matches 1.. if predicate {"condition":"minecraft:random_chance","chance":0.20} run function evercraft:mob_crates/spawn/common
# Looting bonus: extra crate roll (+0.5% per level, max +2.5% at Looting 5)
execute if predicate evercraft:mob_crates/enchantments/looting_5 if predicate {"condition":"minecraft:random_chance","chance":0.025} run function evercraft:mob_crates/spawn/common
execute unless predicate evercraft:mob_crates/enchantments/looting_5 if predicate evercraft:mob_crates/enchantments/looting_4 if predicate {"condition":"minecraft:random_chance","chance":0.02} run function evercraft:mob_crates/spawn/common
execute unless predicate evercraft:mob_crates/enchantments/looting_4 if predicate evercraft:mob_crates/enchantments/looting_3 if predicate {"condition":"minecraft:random_chance","chance":0.015} run function evercraft:mob_crates/spawn/common
execute unless predicate evercraft:mob_crates/enchantments/looting_3 if predicate evercraft:mob_crates/enchantments/looting_2 if predicate {"condition":"minecraft:random_chance","chance":0.01} run function evercraft:mob_crates/spawn/common
execute unless predicate evercraft:mob_crates/enchantments/looting_2 if predicate evercraft:mob_crates/enchantments/looting_1 if predicate {"condition":"minecraft:random_chance","chance":0.005} run function evercraft:mob_crates/spawn/common
# Bonus drops — insert into the spawned crate barrel
execute at @s if block ~ ~ ~ minecraft:barrel run loot insert ~ ~ ~ loot evercraft:mob_crates/bonus/common
