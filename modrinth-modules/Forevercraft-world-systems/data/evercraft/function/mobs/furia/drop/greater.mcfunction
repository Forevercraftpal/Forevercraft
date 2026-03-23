# Furia Greater Kill — 25% chance to drop crate, weighted rarity (scaled up from 10%)
# Weights: Uncommon 20%, Rare 35%, Ornate 25%, Exquisite 15%, Mythical 5%
advancement revoke @s only evercraft:mobs/furia/kill/greater

# Class Affinity XP — furia greater
scoreboard players set #delta ec.temp 6000
function evercraft:affinity/grant_current

# Debug mode: guaranteed drop, skip chance roll
execute unless score #debug_mob_drops ec.debug matches 1 unless predicate {"condition":"minecraft:random_chance","chance":0.25} run return 0

# Roll rarity for crate drop
execute store result score #furia_drop ec.var run random value 1..100

# Mythical: 5% (96-100)
execute if score #furia_drop ec.var matches 96..100 run function evercraft:mob_crates/spawn/mythical
# Exquisite: 15% (81-95)
execute if score #furia_drop ec.var matches 81..95 run function evercraft:mob_crates/spawn/exquisite
# Ornate: 25% (56-80)
execute if score #furia_drop ec.var matches 56..80 run function evercraft:mob_crates/spawn/ornate
# Rare: 35% (21-55)
execute if score #furia_drop ec.var matches 21..55 run function evercraft:mob_crates/spawn/rare
# Uncommon: 20% (1-20)
execute if score #furia_drop ec.var matches 1..20 run function evercraft:mob_crates/spawn/uncommon
