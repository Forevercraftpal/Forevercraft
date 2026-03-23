# Roll crate rarity directly (full-inventory path)
# Replaces crate_direct loot table to enforce dream rate gating
# The normal path uses dummy items → advancements → process functions,
# but advancements don't fire when inventory is full.
# This function replicates the base pool weighted random, then calls
# the existing process functions (clear/revoke lines are harmless no-ops).
# NOTE: LotS bonus loot table pools are not replicated here; the grant
# functions still apply their own LotS bonus crate rolls.

# === BASE POOL (total weight: 100000) ===
# empty: 96034, common: 1750, uncommon: 875, rare: 583,
# ornate: 350, exquisite: 233, mythical: 175
execute store result score #crate_roll ec.var run random value 1..100000

# 1-96034 = empty (no crate) — most rolls land here
execute if score #crate_roll ec.var matches 96035..97784 run function evercraft:fishing/ref/advancement/common/process
execute if score #crate_roll ec.var matches 97785..98659 run function evercraft:fishing/ref/advancement/uncommon/process
execute if score #crate_roll ec.var matches 98660..99242 run function evercraft:fishing/ref/advancement/rare/process
execute if score #crate_roll ec.var matches 99243..99592 run function evercraft:fishing/ref/advancement/ornate/process
execute if score #crate_roll ec.var matches 99593..99825 run function evercraft:fishing/ref/advancement/exquisite/process
execute if score #crate_roll ec.var matches 99826..100000 run function evercraft:fishing/ref/advancement/mythical/process

# Track if any crate was rolled (non-empty result) for the inv_full warning
execute if score #crate_roll ec.var matches 96035.. run scoreboard players set #any_dropped ec.var 1
