# === CRAFTING AFFINITY — TRY CRATE DROP ===
# 1% chance per 10% boost (so 10% boost = 1%, 20% boost = 2%)
# Run as/at player. Called from on_break / harvest / catch functions.

# 10-19% boost = 1% chance
execute if score @s ec.caff_boost matches 10..19 run execute store result score #crate_roll ec.temp run random value 1..100
execute if score @s ec.caff_boost matches 10..19 if score #crate_roll ec.temp matches 1 run function evercraft:craft_affinity/give_crafting_crate

# 20%+ boost (mastery) = 2% chance
execute if score @s ec.caff_boost matches 20.. run execute store result score #crate_roll ec.temp run random value 1..100
execute if score @s ec.caff_boost matches 20.. if score #crate_roll ec.temp matches ..2 run function evercraft:craft_affinity/give_crafting_crate
