# ============================================================
# Check Secret Discoveries
# Special conditions checked every 5s
# Run as player at player position
# ============================================================

# Secret 1: Depths of the World (Y < -48)
execute unless entity @s[tag=jn.s1] if predicate evercraft:journal/y_below_neg48 run function evercraft:journal/record/secret_depths

# Secret 2: Sky Wanderer (Y > 300)
execute unless entity @s[tag=jn.s2] if predicate evercraft:journal/y_above_300 run function evercraft:journal/record/secret_sky

# Secret 3: Dimensional Traveler (visit all 3 dimensions)
# Track individual dimension visits
execute unless entity @s[tag=jn.dim_ow] if dimension minecraft:overworld run tag @s add jn.dim_ow
execute unless entity @s[tag=jn.dim_neth] if dimension minecraft:the_nether run tag @s add jn.dim_neth
execute unless entity @s[tag=jn.dim_end] if dimension minecraft:the_end run tag @s add jn.dim_end
# Check if all 3 visited
execute unless entity @s[tag=jn.s3] if entity @s[tag=jn.dim_ow] if entity @s[tag=jn.dim_neth] if entity @s[tag=jn.dim_end] run function evercraft:journal/record/secret_dimensions

# Secret 4: Lore Collector (all 6 anecdotes)
execute unless entity @s[tag=jn.s4] if score @s ec.anec_elder matches 1 if score @s ec.anec_fisher matches 1 if score @s ec.anec_miner matches 1 if score @s ec.anec_wanderer matches 1 if score @s ec.anec_scholar matches 1 if score @s ec.anec_beast matches 1 run function evercraft:journal/record/secret_lore

# Secret 5: World Explorer (15+ unique structure types)
execute unless entity @s[tag=jn.s5] if score @s ec.struct_unique matches 15.. run function evercraft:journal/record/secret_explorer
