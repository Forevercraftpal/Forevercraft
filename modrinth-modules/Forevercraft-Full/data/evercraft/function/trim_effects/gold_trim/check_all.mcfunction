# Consolidated gold trim checks — Armor + Fire Protection + Strength in structures

# OPT: Cache per-slot predicate results into scores (saves ~8 redundant predicate evaluations)
execute store success score #te_any ec.temp if predicate evercraft:trim_effects/trim/gold_trim/gold_trim
execute store success score #te_head ec.temp if predicate evercraft:trim_effects/trim/gold_trim/gold_head
execute store success score #te_chest ec.temp if predicate evercraft:trim_effects/trim/gold_trim/gold_chest
execute store success score #te_legs ec.temp if predicate evercraft:trim_effects/trim/gold_trim/gold_legs
execute store success score #te_feet ec.temp if predicate evercraft:trim_effects/trim/gold_trim/gold_feet

# Particles
execute if score #te_any ec.temp matches 1 run function evercraft:trim_effects/gold_trim/gold_trim_particle

# Apply
execute if entity @s[tag=!gold_head] if score #te_head ec.temp matches 1 run function evercraft:trim_effects/gold_trim/apply_gold_trim
execute if entity @s[tag=!gold_chest] if score #te_chest ec.temp matches 1 run function evercraft:trim_effects/gold_trim/apply_gold_trim
execute if entity @s[tag=!gold_legs] if score #te_legs ec.temp matches 1 run function evercraft:trim_effects/gold_trim/apply_gold_trim
execute if entity @s[tag=!gold_feet] if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/gold_trim/apply_gold_trim

# Full set bonus
execute if score #te_head ec.temp matches 1 if score #te_chest ec.temp matches 1 if score #te_legs ec.temp matches 1 if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/gold_trim/apply_gold_effect

# Remove
execute if entity @s[tag=gold_head] unless score #te_head ec.temp matches 1 run function evercraft:trim_effects/gold_trim/remove_gold_trim
execute if entity @s[tag=gold_chest] unless score #te_chest ec.temp matches 1 run function evercraft:trim_effects/gold_trim/remove_gold_trim
execute if entity @s[tag=gold_legs] unless score #te_legs ec.temp matches 1 run function evercraft:trim_effects/gold_trim/remove_gold_trim
execute if entity @s[tag=gold_feet] unless score #te_feet ec.temp matches 1 run function evercraft:trim_effects/gold_trim/remove_gold_trim
