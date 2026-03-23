# Check if position is in a structure and determine tier + structure type
# Position is stored in cf.pos_x, cf.pos_y, cf.pos_z on the player
# Current execution position is at the chest block

# Reset tier and structure ID
scoreboard players set @s cf.tier 0
scoreboard players set @s cf.struct_id 0

# ============================================================================
# ORNATE (Base Tier 4) — MAX BASE TIER
# End Cities, Ancient Cities, Bastions - Most dangerous, best base rewards
# ============================================================================
execute if predicate evercraft:structures/structure/ancient_city run scoreboard players set @s cf.tier 4
execute if predicate evercraft:structures/structure/ancient_city run scoreboard players set @s cf.struct_id 1
execute if predicate evercraft:structures/structure/end_city run scoreboard players set @s cf.tier 4
execute if predicate evercraft:structures/structure/end_city run scoreboard players set @s cf.struct_id 2
execute if predicate evercraft:structures/structure/bastion_remnant if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 4
execute if predicate evercraft:structures/structure/bastion_remnant if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 6

# ============================================================================
# RARE (Base Tier 3)
# Trial Chambers, Stronghold, Woodland Mansion, Nether Fortress, Ocean Monument
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
# UNCOMMON (Base Tier 2)
# Desert Pyramid, Jungle Pyramid, Mineshaft, Dungeon
# ============================================================================
execute if predicate evercraft:structures/structure/desert_pyramid if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 2
execute if predicate evercraft:structures/structure/desert_pyramid if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 9
execute if predicate evercraft:structures/structure/jungle_pyramid if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 2
execute if predicate evercraft:structures/structure/jungle_pyramid if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 10
execute if predicate evercraft:structures/structure/mineshaft if score @s cf.tier matches 0 run scoreboard players set @s cf.tier 2
execute if predicate evercraft:structures/structure/mineshaft if score @s cf.struct_id matches 0 run scoreboard players set @s cf.struct_id 17

# ============================================================================
# COMMON (Base Tier 1)
# Shipwreck, Ocean Ruins, Igloo, Pillager Outpost, Trail Ruins, Village, Ruined Portal
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
# FALLBACK: Block-based detection for structures with bounding box issues
# ============================================================================

# Dungeon (struct_id 19) - check for spawner nearby
execute if score @s cf.tier matches 0 run function evercraft:structures/interact/check_dungeon

# Desert pyramid fallback - TNT nearby (check multiple positions around/below chest)
execute if score @s cf.tier matches 0 if block ~ ~-1 ~ minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~ ~-1 ~ minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~ ~-2 ~ minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~ ~-2 ~ minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~ ~-3 ~ minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~ ~-3 ~ minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~1 ~-1 ~ minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~1 ~-1 ~ minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~-1 ~-1 ~ minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~-1 ~-1 ~ minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~ ~-1 ~1 minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~ ~-1 ~1 minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~ ~-1 ~-1 minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~ ~-1 ~-1 minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~1 ~-2 ~1 minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~1 ~-2 ~1 minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~-1 ~-2 ~-1 minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~-1 ~-2 ~-1 minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~1 ~-2 ~-1 minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~1 ~-2 ~-1 minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~-1 ~-2 ~1 minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~-1 ~-2 ~1 minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~2 ~-2 ~ minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~2 ~-2 ~ minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~-2 ~-2 ~ minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~-2 ~-2 ~ minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~ ~-2 ~2 minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~ ~-2 ~2 minecraft:tnt run scoreboard players set @s cf.struct_id 9
execute if score @s cf.tier matches 0 if block ~ ~-2 ~-2 minecraft:tnt run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if block ~ ~-2 ~-2 minecraft:tnt run scoreboard players set @s cf.struct_id 9

# ============================================================================
# CUSTOM STRUCTURE FALLBACK (struct_id 20)
# If no vanilla structure detected AND not player-placed, assume datapack structure
# ============================================================================

# First check if this position has a player-placed marker (skip if found)
scoreboard players set #is_player_placed cf.temp 0
execute if entity @e[type=marker,tag=cf.player_placed,distance=..1] run scoreboard players set #is_player_placed cf.temp 1

# End dimension custom structures → Tier 4 (Ornate) - Nullscape, custom end structures
execute if score @s cf.tier matches 0 if score #is_player_placed cf.temp matches 0 if dimension minecraft:the_end run scoreboard players set @s cf.tier 4
execute if score @s cf.struct_id matches 0 if score #is_player_placed cf.temp matches 0 if dimension minecraft:the_end run scoreboard players set @s cf.struct_id 20

# Nether dimension custom structures → Tier 3 (Rare) - Incendium, better portals, etc.
execute if score @s cf.tier matches 0 if score #is_player_placed cf.temp matches 0 if dimension minecraft:the_nether run scoreboard players set @s cf.tier 3
execute if score @s cf.struct_id matches 0 if score #is_player_placed cf.temp matches 0 if dimension minecraft:the_nether run scoreboard players set @s cf.struct_id 20

# Overworld deep underground (Y < -10) → Tier 3 (Rare) - Deep dungeons, ancient cities variants
execute if score @s cf.tier matches 0 if score #is_player_placed cf.temp matches 0 if dimension minecraft:overworld if predicate evercraft:structures/y_level/deep run scoreboard players set @s cf.tier 3
execute if score @s cf.struct_id matches 0 if score #is_player_placed cf.temp matches 0 if dimension minecraft:overworld if predicate evercraft:structures/y_level/deep run scoreboard players set @s cf.struct_id 20

# Overworld underground (Y -10 to 30) → Tier 2 (Uncommon) - Dungeons, underground ruins
execute if score @s cf.tier matches 0 if score #is_player_placed cf.temp matches 0 if dimension minecraft:overworld if predicate evercraft:structures/y_level/underground run scoreboard players set @s cf.tier 2
execute if score @s cf.struct_id matches 0 if score #is_player_placed cf.temp matches 0 if dimension minecraft:overworld if predicate evercraft:structures/y_level/underground run scoreboard players set @s cf.struct_id 20

# Overworld surface/sky (Y > 30) → Tier 1 (Common) - Taverns, surface ruins, towers
execute if score @s cf.tier matches 0 if score #is_player_placed cf.temp matches 0 if dimension minecraft:overworld run scoreboard players set @s cf.tier 1
execute if score @s cf.struct_id matches 0 if score #is_player_placed cf.temp matches 0 if dimension minecraft:overworld run scoreboard players set @s cf.struct_id 20

# ============================================================================
# VANILLA STRUCTURE LUCK ROLL SYSTEM
# For struct_ids 1-19, roll for tier upgrade based on Dream Rate
# Base tier from structure type becomes floor, Dreams can upgrade it!
# ============================================================================
execute if score @s cf.struct_id matches 1..19 run function evercraft:structures/interact/roll_vanilla_tier

# ============================================================================
# UNKNOWN STRUCTURE LUCK ROLL SYSTEM
# For struct_id 20, roll for tier upgrade based on Dream Rate
# ============================================================================
execute if score @s cf.struct_id matches 20 run function evercraft:structures/interact/roll_unknown_tier

# If we found a structure tier, check if player already looted this chest
execute if score @s cf.tier matches 1.. run function evercraft:structures/storage/check_looted
