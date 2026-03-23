# Furia Standard Kill — 15% chance to drop crate, weighted rarity (scaled up from 10%)
# Weights: Common 20%, Uncommon 35%, Rare 30%, Ornate 15%
advancement revoke @s only evercraft:mobs/furia/kill/standard

# Class Affinity XP — furia standard
scoreboard players set #delta ec.temp 3600
function evercraft:affinity/grant_current

# Debug mode: guaranteed drop, skip chance roll
execute unless score #debug_mob_drops ec.debug matches 1 unless predicate {"condition":"minecraft:random_chance","chance":0.15} run return 0

# Roll rarity for crate drop
execute store result score #furia_drop ec.var run random value 1..100

# Ornate: 15% (86-100)
execute if score #furia_drop ec.var matches 86..100 run function evercraft:mob_crates/spawn/ornate
# Rare: 30% (56-85)
execute if score #furia_drop ec.var matches 56..85 run function evercraft:mob_crates/spawn/rare
# Uncommon: 35% (21-55)
execute if score #furia_drop ec.var matches 21..55 run function evercraft:mob_crates/spawn/uncommon
# Common: 20% (1-20)
execute if score #furia_drop ec.var matches 1..20 run function evercraft:mob_crates/spawn/common
