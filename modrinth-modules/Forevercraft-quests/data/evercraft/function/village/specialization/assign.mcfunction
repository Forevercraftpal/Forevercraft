# ============================================================
# Assign Village Specialization
# Called from quest board creation, positioned at the lectern
# Detects biome and stores specialization for this village
# Spec IDs: 1=Mining, 2=Fishing, 3=Farming, 4=Combat, 5=Exploration, 6=Scholarly
# ============================================================

# Get village ID from the newly created board marker
execute store result storage eden:temp vs.vid int 1 run scoreboard players get @e[type=armor_stand,tag=quests.board,distance=..3,limit=1,sort=nearest] ec.village_id

# Default to Mining (1) — most generic for unknown biomes
scoreboard players set #vs_spec vs.temp 1

# --- Farming (3): Plains, Flower Forest, Mushroom, Savanna ---
execute if predicate evercraft:biome/is_plains run scoreboard players set #vs_spec vs.temp 3
execute if predicate evercraft:biome/is_flower_forest run scoreboard players set #vs_spec vs.temp 3
execute if predicate evercraft:biome/is_mushroom run scoreboard players set #vs_spec vs.temp 3
execute if predicate evercraft:biome/is_savanna run scoreboard players set #vs_spec vs.temp 3

# --- Fishing (2): Ocean, River, Swamp ---
execute if predicate evercraft:biome/is_ocean run scoreboard players set #vs_spec vs.temp 2
execute if predicate evercraft:biome/is_river run scoreboard players set #vs_spec vs.temp 2
execute if predicate evercraft:biome/is_swamp run scoreboard players set #vs_spec vs.temp 2

# --- Combat (4): Taiga, Mountain, Ice, Dark Forest, Nether biomes ---
execute if predicate evercraft:biome/is_taiga run scoreboard players set #vs_spec vs.temp 4
execute if predicate evercraft:biome/is_mountain run scoreboard players set #vs_spec vs.temp 4
execute if predicate evercraft:biome/is_ice run scoreboard players set #vs_spec vs.temp 4
execute if predicate evercraft:biome/is_dark_forest run scoreboard players set #vs_spec vs.temp 4
execute if predicate evercraft:biome/is_nether_wastes run scoreboard players set #vs_spec vs.temp 4
execute if predicate evercraft:biome/is_crimson_forest run scoreboard players set #vs_spec vs.temp 4
execute if predicate evercraft:biome/is_warped_forest run scoreboard players set #vs_spec vs.temp 4
execute if predicate evercraft:biome/is_basalt_deltas run scoreboard players set #vs_spec vs.temp 4
execute if predicate evercraft:biome/is_soul_sand_valley run scoreboard players set #vs_spec vs.temp 4

# --- Exploration (5): Jungle, End, Wind ---
execute if predicate evercraft:biome/is_jungle run scoreboard players set #vs_spec vs.temp 5
execute if predicate evercraft:biome/is_the_end run scoreboard players set #vs_spec vs.temp 5

# --- Scholarly (6): Forest ---
execute if predicate evercraft:biome/is_forest run scoreboard players set #vs_spec vs.temp 6

# --- Mining (1): Desert, Badlands, Dripstone Caves, Deep Dark, Lush Caves ---
# Explicit overrides (default is already 1, but clarity matters)
execute if predicate evercraft:biome/is_desert run scoreboard players set #vs_spec vs.temp 1
execute if predicate evercraft:biome/is_badlands run scoreboard players set #vs_spec vs.temp 1
execute if predicate evercraft:biome/is_dripstone_caves run scoreboard players set #vs_spec vs.temp 1
execute if predicate evercraft:biome/is_deep_dark run scoreboard players set #vs_spec vs.temp 1
execute if predicate evercraft:biome/is_lush_caves run scoreboard players set #vs_spec vs.temp 1

# Persist specialization to storage
execute store result storage eden:temp vs.spec int 1 run scoreboard players get #vs_spec vs.temp
function evercraft:village/specialization/assign_macro with storage eden:temp vs
