# Foraging Bush: Summon bush entities at current position
# Run at the ground-level position where bush should appear

# Data marker (stores spawn gametime for despawn calculation)
summon marker ~ ~ ~ {Tags:["ec.forage","ec.forage_data","ec.forage_new"]}
execute store result entity @e[type=marker,tag=ec.forage_new,limit=1,distance=..1] data.spawn_time long 1 run time query gametime

# Item display (visual bush — placeholder, variant will override)
summon item_display ~ ~0.1 ~ {Tags:["ec.forage","ec.forage_visual","ec.forage_vis_new"],item:{id:"minecraft:dead_bush",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[0.8f,0.8f,0.8f]},billboard:"center"}

# Interaction entity (right-click target, slightly above ground)
summon interaction ~ ~0.2 ~ {Tags:["ec.forage","ec.forage_click"],width:1.0f,height:0.8f,response:1b}

# --- Biome detection: set node_biome in forage-isolated storage ---
data modify storage evercraft:fg_temp node_biome set value "plains"
execute if predicate evercraft:biome/is_desert run data modify storage evercraft:fg_temp node_biome set value "desert"
execute if predicate evercraft:biome/is_badlands run data modify storage evercraft:fg_temp node_biome set value "badlands"
execute if predicate evercraft:biome/is_ice run data modify storage evercraft:fg_temp node_biome set value "ice"
execute if predicate evercraft:biome/is_swamp run data modify storage evercraft:fg_temp node_biome set value "swamp"
execute if predicate evercraft:biome/is_forest run data modify storage evercraft:fg_temp node_biome set value "forest"
execute if predicate evercraft:biome/is_flower_forest run data modify storage evercraft:fg_temp node_biome set value "flower_forest"
execute if predicate evercraft:biome/is_dark_forest run data modify storage evercraft:fg_temp node_biome set value "dark_forest"
execute if predicate evercraft:biome/is_jungle run data modify storage evercraft:fg_temp node_biome set value "jungle"
execute if predicate evercraft:biome/is_taiga run data modify storage evercraft:fg_temp node_biome set value "taiga"
execute if predicate evercraft:biome/is_mountain run data modify storage evercraft:fg_temp node_biome set value "mountain"
execute if predicate evercraft:biome/is_wind run data modify storage evercraft:fg_temp node_biome set value "mountain"
execute if predicate evercraft:biome/is_ocean run data modify storage evercraft:fg_temp node_biome set value "ocean"
execute if predicate evercraft:biome/is_mushroom run data modify storage evercraft:fg_temp node_biome set value "mushroom"
execute if predicate evercraft:biome/is_savanna run data modify storage evercraft:fg_temp node_biome set value "savanna"
execute if predicate evercraft:biome/is_river run data modify storage evercraft:fg_temp node_biome set value "plains"

# Roll visual variant 1-3
execute store result storage evercraft:fg_temp node_variant int 1 run random value 1..3

# Apply visual item + store biome on marker (macro)
function evercraft:forage/apply_variant with storage evercraft:fg_temp

# Clean up temporary tags
tag @e[type=marker,tag=ec.forage_new,limit=1,distance=..1] remove ec.forage_new
tag @e[type=item_display,tag=ec.forage_vis_new,limit=1,distance=..1] remove ec.forage_vis_new

# Spawn particle burst
particle dust{color:[0.4,0.8,0.3],scale:0.8} ~ ~0.3 ~ 0.2 0.2 0.2 0 8
particle minecraft:happy_villager ~ ~0.5 ~ 0.1 0.3 0.1 0 5
