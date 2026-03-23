# ============================================================
# Apply Reputation Benefits
# Run each tick for players in villages
# ============================================================

# Only apply if player is in a village
execute unless score @s ec.current_village matches 1.. run return fail

# Hero rank (1000+): Hero of the Village I (trades)
execute if score @s ec.rep_rank matches 4 run effect give @s minecraft:hero_of_the_village 2 0 true

# Legend rank (2500+): Hero of the Village II (better trades)
execute if score @s ec.rep_rank matches 5 run effect give @s minecraft:hero_of_the_village 2 1 true

# Ally rank (500+): Iron Golems are friendly
# (handled via mob targeting adjustments)

# Friend rank (250+): Slight luck bonus in village
execute if score @s ec.rep_rank matches 2.. run effect give @s minecraft:luck 2 0 true

# Village specialization passive buffs (Haste, Luck, Regen, Strength, Speed, NV)
function evercraft:village/specialization/apply_benefits
