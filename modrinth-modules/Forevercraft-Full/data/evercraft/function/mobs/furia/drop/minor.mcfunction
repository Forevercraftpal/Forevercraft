# Furia Minor Kill — 10% chance to drop crate, weighted rarity
# Weights: Common 50%, Uncommon 35%, Rare 15%
advancement revoke @s only evercraft:mobs/furia/kill/minor

# Class Affinity XP — furia minor
scoreboard players set #delta ec.temp 2400
function evercraft:affinity/grant_current

# Debug mode: guaranteed drop, skip chance roll
execute unless score #debug_mob_drops ec.debug matches 1 unless predicate {"condition":"minecraft:random_chance","chance":0.10} run return 0

# Roll rarity for crate drop
execute store result score #furia_drop ec.var run random value 1..100

# Rare: 15% (86-100)
execute if score #furia_drop ec.var matches 86..100 run function evercraft:mob_crates/spawn/rare
# Uncommon: 35% (51-85)
execute if score #furia_drop ec.var matches 51..85 run function evercraft:mob_crates/spawn/uncommon
# Common: 50% (1-50)
execute if score #furia_drop ec.var matches 1..50 run function evercraft:mob_crates/spawn/common
