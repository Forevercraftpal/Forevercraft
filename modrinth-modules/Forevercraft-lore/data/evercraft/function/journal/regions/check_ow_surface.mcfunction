# ============================================================
# Check Overworld Surface Region Completion
# Requires: ALL 16 surface biomes AND 8+ overworld structures
# Surface biomes: IDs 0-14, 24 (16 total — Adventuring Time style)
# OW structures: IDs 1, 3-5, 8-18 (15 total)
# ============================================================

# Count surface biomes discovered
scoreboard players set #jn_biome jn.temp 0
execute if entity @s[tag=jn.b0] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b1] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b2] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b3] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b4] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b5] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b6] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b7] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b8] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b9] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b10] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b11] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b12] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b13] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b14] run scoreboard players add #jn_biome jn.temp 1
execute if entity @s[tag=jn.b24] run scoreboard players add #jn_biome jn.temp 1

# Count overworld structures discovered (IDs 1, 3-5, 8-18)
scoreboard players set #jn_struct jn.temp 0
execute if score @s ec.struct_1 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_3 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_4 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_5 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_8 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_9 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_10 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_11 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_12 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_13 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_14 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_15 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_16 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_17 matches 1 run scoreboard players add #jn_struct jn.temp 1
execute if score @s ec.struct_18 matches 1 run scoreboard players add #jn_struct jn.temp 1

# Check: ALL 16 surface biomes AND 8+ structures
execute unless score #jn_biome jn.temp matches 16 run return fail
execute unless score #jn_struct jn.temp matches 8.. run return fail

# Region complete!
function evercraft:journal/regions/complete_ow_surface
