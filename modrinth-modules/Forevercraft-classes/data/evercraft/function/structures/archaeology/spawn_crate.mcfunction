# Archaeology structure crate — Detect structure, roll tier, spawn loot barrel
# Runs as player, positioned at the former suspicious block location
# Adapted from check_structure.mcfunction — skips check_looted (no re-loot concern)
# and block-based fallbacks (dungeon/TNT checks irrelevant for suspicious blocks)

# Reset tier and structure ID
scoreboard players set @s cf.tier 0
scoreboard players set @s cf.struct_id 0

# ============================================================================
# ORNATE (Base Tier 4) — Ancient Cities, End Cities, Bastions
# ============================================================================
execute if predicate evercraft:structures/structure/ancient_city run scoreboard players set @s cf.tier 4
execute if predicate evercraft:structures/structure/ancient_city run scoreboard players set @s cf.struct_id 1
execute if predicate evercraft:structures/structure/end_city run scoreboard players set @s cf.tier 4
execute if predicate evercraft:structures/structure/end_city run scoreboard players set @s cf.struct_id 2
execute if predicate evercraft:structures/structure/bastion_remnant if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 4
execute if predicate evercraft:structures/structure/bastion_remnant if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 6

# ============================================================================
# RARE (Base Tier 3) — Trial Chambers, Stronghold, Mansion, Fortress, Monument
# ============================================================================
execute if predicate evercraft:structures/structure/trial_chambers if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 3
execute if predicate evercraft:structures/structure/trial_chambers if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 3
execute if predicate evercraft:structures/structure/stronghold if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 3
execute if predicate evercraft:structures/structure/stronghold if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 4
execute if predicate evercraft:structures/structure/mansion if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 3
execute if predicate evercraft:structures/structure/mansion if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 5
execute if predicate evercraft:structures/structure/fortress if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 3
execute if predicate evercraft:structures/structure/fortress if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 7
execute if predicate evercraft:structures/structure/monument if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 3
execute if predicate evercraft:structures/structure/monument if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 8

# ============================================================================
# UNCOMMON (Base Tier 2) — Desert Pyramid, Jungle Pyramid, Mineshaft
# ============================================================================
execute if predicate evercraft:structures/structure/desert_pyramid if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 2
execute if predicate evercraft:structures/structure/desert_pyramid if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 9
execute if predicate evercraft:structures/structure/jungle_pyramid if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 2
execute if predicate evercraft:structures/structure/jungle_pyramid if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 10
execute if predicate evercraft:structures/structure/mineshaft if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 2
execute if predicate evercraft:structures/structure/mineshaft if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 17

# ============================================================================
# COMMON (Base Tier 1) — Shipwreck, Ocean Ruins, Igloo, Outpost, Trail Ruins, Village, Ruined Portal
# ============================================================================
execute if predicate evercraft:structures/structure/shipwreck if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 1
execute if predicate evercraft:structures/structure/shipwreck if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 11
execute if predicate evercraft:structures/structure/ocean_ruin if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 1
execute if predicate evercraft:structures/structure/ocean_ruin if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 12
execute if predicate evercraft:structures/structure/igloo if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 1
execute if predicate evercraft:structures/structure/igloo if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 13
execute if predicate evercraft:structures/structure/pillager_outpost if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 1
execute if predicate evercraft:structures/structure/pillager_outpost if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 14
execute if predicate evercraft:structures/structure/trail_ruins if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 1
execute if predicate evercraft:structures/structure/trail_ruins if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 15
execute if predicate evercraft:structures/structure/village if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 1
execute if predicate evercraft:structures/structure/village if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 16
execute if predicate evercraft:structures/structure/ruined_portal if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 1
execute if predicate evercraft:structures/structure/ruined_portal if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 18

# ============================================================================
# CUSTOM STRUCTURE FALLBACK (struct_id 20)
# Dimension + Y-level based tier assignment for unknown structures
# ============================================================================
execute if score @s cf.tier matches 0 if dimension minecraft:the_end run scoreboard players set @s cf.tier 4
execute if score @s cf.struct_id matches 0 if dimension minecraft:the_end run scoreboard players set @s cf.struct_id 20
execute if score @s cf.tier matches 0 if dimension minecraft:the_nether run scoreboard players set @s cf.tier 3
execute if score @s cf.struct_id matches 0 if dimension minecraft:the_nether run scoreboard players set @s cf.struct_id 20
execute if score @s cf.tier matches 0 if dimension minecraft:overworld if predicate evercraft:structures/y_level/deep run scoreboard players set @s cf.tier 3
execute if score @s cf.struct_id matches 0 if dimension minecraft:overworld if predicate evercraft:structures/y_level/deep run scoreboard players set @s cf.struct_id 20
execute if score @s cf.tier matches 0 if dimension minecraft:overworld if predicate evercraft:structures/y_level/underground run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if dimension minecraft:overworld if predicate evercraft:structures/y_level/underground run scoreboard players set @s cf.struct_id 20
execute if score @s cf.tier matches 0 if dimension minecraft:overworld run scoreboard players set @s cf.tier 1
execute if score @s cf.struct_id matches 0 if dimension minecraft:overworld run scoreboard players set @s cf.struct_id 20

# ============================================================================
# TIER ROLL — Luck-weighted upgrade based on Dream Rate
# ============================================================================
execute if score @s cf.struct_id matches 1..19 run function evercraft:structures/interact/roll_vanilla_tier
execute if score @s cf.struct_id matches 20 run function evercraft:structures/interact/roll_unknown_tier

# ============================================================================
# SPAWN LOOT BARREL — Places barrel, fills loot, runs animation, marks looted
# ============================================================================
execute if score @s cf.tier matches 1.. run function evercraft:structures/container/spawn_loot_here
