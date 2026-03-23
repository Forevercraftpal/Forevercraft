# Dungeon — Detect Which Structure Player Is In
# Run at @s (player position), sets #dg_struct_id ec.var
# Called from start.mcfunction after at_structure predicate passes

scoreboard players set #dg_struct_id ec.var 0

# --- Tier 4 (Ornate) ---
execute if predicate evercraft:structures/structure/ancient_city run scoreboard players set #dg_struct_id ec.var 1
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/end_city run scoreboard players set #dg_struct_id ec.var 2
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/bastion_remnant run scoreboard players set #dg_struct_id ec.var 6

# --- Tier 3 (Rare) ---
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/trial_chambers run scoreboard players set #dg_struct_id ec.var 3
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/stronghold run scoreboard players set #dg_struct_id ec.var 4
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/mansion run scoreboard players set #dg_struct_id ec.var 5
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/fortress run scoreboard players set #dg_struct_id ec.var 7
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/monument run scoreboard players set #dg_struct_id ec.var 8

# --- Tier 2 (Uncommon) ---
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/desert_pyramid run scoreboard players set #dg_struct_id ec.var 9
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/jungle_pyramid run scoreboard players set #dg_struct_id ec.var 10
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/mineshaft run scoreboard players set #dg_struct_id ec.var 17

# --- Tier 1 (Common) ---
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/shipwreck run scoreboard players set #dg_struct_id ec.var 11
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/ocean_ruin run scoreboard players set #dg_struct_id ec.var 12
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/igloo run scoreboard players set #dg_struct_id ec.var 13
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/pillager_outpost run scoreboard players set #dg_struct_id ec.var 14
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/ruined_portal run scoreboard players set #dg_struct_id ec.var 18
execute if score #dg_struct_id ec.var matches 0 if predicate evercraft:structures/structure/swamp_hut run scoreboard players set #dg_struct_id ec.var 19
