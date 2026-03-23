# Consolidated netherite trim checks — Dream Rate + Resistance + Gravity Control

# Early exit: no netherite trim equipped and no active netherite state tags — skip all checks
# Tags checked first (cheap) for short-circuit when an active netherite user hits the first match
execute unless entity @s[tag=netherite_head] unless entity @s[tag=netherite_chest] unless entity @s[tag=netherite_legs] unless entity @s[tag=netherite_feet] unless entity @s[tag=netherite_floating] unless entity @s[tag=netherite_falling_fast] unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim run tag @s remove ec.te_nth_any
execute unless entity @s[tag=netherite_head] unless entity @s[tag=netherite_chest] unless entity @s[tag=netherite_legs] unless entity @s[tag=netherite_feet] unless entity @s[tag=netherite_floating] unless entity @s[tag=netherite_falling_fast] unless predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim run return 0

# OPT: Mark player as having netherite trim (gates per-tick dispatch in tick.mcfunction)
tag @s add ec.te_nth_any

# OPT: Cache per-slot predicate results into scores (was ~10+ evaluations of same predicates)
execute store success score #te_nth_any ec.temp if predicate evercraft:trim_effects/trim/netherite_trim/netherite_trim
execute store success score #te_nth_head ec.temp if predicate evercraft:trim_effects/trim/netherite_trim/netherite_head
execute store success score #te_nth_chest ec.temp if predicate evercraft:trim_effects/trim/netherite_trim/netherite_chest
execute store success score #te_nth_legs ec.temp if predicate evercraft:trim_effects/trim/netherite_trim/netherite_legs
execute store success score #te_nth_feet ec.temp if predicate evercraft:trim_effects/trim/netherite_trim/netherite_feet

# OPT: Cache block check (was 5 identical block lookups at ~ ~-0.1 ~)
execute store success score #te_nth_air ec.temp if block ~ ~-0.1 ~ #minecraft:replaceable

# Particles
execute if score #te_nth_any ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/netherite_trim_particle

# Apply/remove base effects
execute if entity @s[tag=!netherite_head,tag=!netherite_falling_fast] if score #te_nth_head ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/apply_netherite_trim
execute if entity @s[tag=!netherite_chest,tag=!netherite_falling_fast] if score #te_nth_chest ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/apply_netherite_trim
execute if entity @s[tag=!netherite_legs,tag=!netherite_falling_fast] if score #te_nth_legs ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/apply_netherite_trim
execute if entity @s[tag=!netherite_feet,tag=!netherite_falling_fast] if score #te_nth_feet ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/apply_netherite_trim

# Full set bonus — Resistance I (constant)
execute if score #te_nth_head ec.temp matches 1 if score #te_nth_chest ec.temp matches 1 if score #te_nth_legs ec.temp matches 1 if score #te_nth_feet ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/apply_netherite_effect

# Float mechanics (full set only)
execute if entity @s[tag=!netherite_floating,tag=netherite_head,tag=netherite_chest,tag=netherite_legs,tag=netherite_feet] if predicate evercraft:trim_effects/sneaking run function evercraft:trim_effects/netherite_trim/start_float
execute if entity @s[tag=netherite_floating] unless predicate evercraft:trim_effects/sneaking run function evercraft:trim_effects/netherite_trim/stop_float
execute if entity @s[tag=netherite_floating] unless score #te_nth_any ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/stop_float

# Track fall distance while airborne (fall_distance resets on landing tick, so store it each airborne tick)
execute if score #te_nth_any ec.temp matches 1 if score #te_nth_air ec.temp matches 1 store result score @s te.fall_dist run data get entity @s fall_distance 1

# Fast falling and landing (OPT: cached block check replaces 5 block lookups)
execute if entity @s[tag=netherite_falling_fast] unless score #te_nth_air ec.temp matches 1 run tag @s remove netherite_falling_fast
execute if score #te_nth_any ec.temp matches 1 unless score #te_nth_air ec.temp matches 1 unless entity @s[tag=netherite_on_ground] run function evercraft:trim_effects/netherite_trim/land_particles
execute if score #te_nth_any ec.temp matches 1 unless score #te_nth_air ec.temp matches 1 unless entity @s[tag=netherite_on_ground] if score @s te.fall_dist matches 16.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.3 0.8
execute if score #te_nth_any ec.temp matches 1 unless score #te_nth_air ec.temp matches 1 run tag @s add netherite_on_ground
execute if score #te_nth_any ec.temp matches 1 if score #te_nth_air ec.temp matches 1 run tag @s remove netherite_on_ground

# Remove
execute if entity @s[tag=netherite_head] unless score #te_nth_head ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/remove_netherite_trim
execute if entity @s[tag=netherite_chest] unless score #te_nth_chest ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/remove_netherite_trim
execute if entity @s[tag=netherite_legs] unless score #te_nth_legs ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/remove_netherite_trim
execute if entity @s[tag=netherite_feet] unless score #te_nth_feet ec.temp matches 1 run function evercraft:trim_effects/netherite_trim/remove_netherite_trim
