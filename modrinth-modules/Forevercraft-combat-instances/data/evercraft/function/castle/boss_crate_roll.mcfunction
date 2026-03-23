# Infinite Castle — Boss Crate Tier Roll
# Same tier distribution as regular mob crates
# Common 58%, Uncommon 25%, Rare 10%, Ornate 5%, Exquisite 1.5%, Mythical 0.5%

execute store result score #mob_tier ec.var run random value 1..1000
execute if score #mob_tier ec.var matches 996..1000 run function evercraft:mob_crates/spawn/mythical
execute if score #mob_tier ec.var matches 981..995 run function evercraft:mob_crates/spawn/exquisite
execute if score #mob_tier ec.var matches 931..980 run function evercraft:mob_crates/spawn/ornate
execute if score #mob_tier ec.var matches 831..930 run function evercraft:mob_crates/spawn/rare
execute if score #mob_tier ec.var matches 581..830 run function evercraft:mob_crates/spawn/uncommon
execute if score #mob_tier ec.var matches 1..580 run function evercraft:mob_crates/spawn/common
