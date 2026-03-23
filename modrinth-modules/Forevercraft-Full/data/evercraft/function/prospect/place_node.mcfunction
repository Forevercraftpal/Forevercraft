# Ore Node: Summon ore node entities at current position
# Run at the ground-level position where node should appear

# Data marker (stores spawn gametime for despawn calculation)
summon marker ~ ~ ~ {Tags:["ec.prospect","ec.prospect_data","ec.prospect_new"]}
execute store result entity @e[type=marker,tag=ec.prospect_new,limit=1,distance=..1] data.spawn_time long 1 run time query gametime

# --- Biome detection (all biomes, surface + cave + nether + end) ---
# Uses prospect-isolated storage to prevent multiplayer race conditions
data modify storage evercraft:pr_temp node_biome set value "plains"
# Overworld surface
execute if predicate evercraft:biome/is_desert run data modify storage evercraft:pr_temp node_biome set value "desert"
execute if predicate evercraft:biome/is_badlands run data modify storage evercraft:pr_temp node_biome set value "badlands"
execute if predicate evercraft:biome/is_ice run data modify storage evercraft:pr_temp node_biome set value "ice"
execute if predicate evercraft:biome/is_swamp run data modify storage evercraft:pr_temp node_biome set value "swamp"
execute if predicate evercraft:biome/is_forest run data modify storage evercraft:pr_temp node_biome set value "forest"
execute if predicate evercraft:biome/is_flower_forest run data modify storage evercraft:pr_temp node_biome set value "flower_forest"
execute if predicate evercraft:biome/is_dark_forest run data modify storage evercraft:pr_temp node_biome set value "dark_forest"
execute if predicate evercraft:biome/is_jungle run data modify storage evercraft:pr_temp node_biome set value "jungle"
execute if predicate evercraft:biome/is_taiga run data modify storage evercraft:pr_temp node_biome set value "taiga"
execute if predicate evercraft:biome/is_mountain run data modify storage evercraft:pr_temp node_biome set value "mountain"
execute if predicate evercraft:biome/is_wind run data modify storage evercraft:pr_temp node_biome set value "mountain"
execute if predicate evercraft:biome/is_ocean run data modify storage evercraft:pr_temp node_biome set value "ocean"
execute if predicate evercraft:biome/is_mushroom run data modify storage evercraft:pr_temp node_biome set value "mushroom"
execute if predicate evercraft:biome/is_savanna run data modify storage evercraft:pr_temp node_biome set value "savanna"
execute if predicate evercraft:biome/is_river run data modify storage evercraft:pr_temp node_biome set value "plains"
# Underground caves (override surface if in cave biome)
execute if predicate evercraft:biome/is_deep_dark run data modify storage evercraft:pr_temp node_biome set value "deep_dark"
execute if predicate evercraft:biome/is_lush_caves run data modify storage evercraft:pr_temp node_biome set value "lush_caves"
execute if predicate evercraft:biome/is_dripstone_caves run data modify storage evercraft:pr_temp node_biome set value "dripstone_caves"
# Nether
execute if predicate evercraft:biome/is_crimson_forest run data modify storage evercraft:pr_temp node_biome set value "crimson_forest"
execute if predicate evercraft:biome/is_warped_forest run data modify storage evercraft:pr_temp node_biome set value "warped_forest"
execute if predicate evercraft:biome/is_basalt_deltas run data modify storage evercraft:pr_temp node_biome set value "basalt_deltas"
execute if predicate evercraft:biome/is_soul_sand_valley run data modify storage evercraft:pr_temp node_biome set value "soul_sand_valley"
execute if predicate evercraft:biome/is_nether_wastes run data modify storage evercraft:pr_temp node_biome set value "nether_wastes"
# End
execute if predicate evercraft:biome/is_the_end run data modify storage evercraft:pr_temp node_biome set value "the_end"

# Roll visual variant 1-3
execute store result storage evercraft:pr_temp node_variant int 1 run random value 1..3

# Store biome on marker (macro)
function evercraft:prospect/apply_variant with storage evercraft:pr_temp

# Block display (placeholder, set_visual overrides with biome variant)
summon block_display ~ ~ ~ {Tags:["ec.prospect","ec.prospect_visual","ec.prospect_vis_new"],block_state:{Name:"minecraft:stone"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,-0.2f],scale:[0.4f,0.3f,0.4f]}}
function evercraft:prospect/set_visual with storage evercraft:pr_temp
tag @e[type=block_display,tag=ec.prospect_vis_new,limit=1,distance=..1] remove ec.prospect_vis_new

# Clean up marker tag
tag @e[type=marker,tag=ec.prospect_new,limit=1,distance=..1] remove ec.prospect_new

# Interaction entity (right-click target, slightly above ground)
summon interaction ~ ~0.15 ~ {Tags:["ec.prospect","ec.prospect_click"],width:0.8f,height:0.6f,response:1b}

# Spawn particle burst
particle dust{color:[0.7,0.7,0.8],scale:0.8} ~ ~0.2 ~ 0.2 0.15 0.2 0 8
particle minecraft:electric_spark ~ ~0.3 ~ 0.15 0.2 0.15 0.01 5
