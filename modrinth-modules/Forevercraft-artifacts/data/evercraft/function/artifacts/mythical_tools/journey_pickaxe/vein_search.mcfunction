# Journey Pickaxe - Vein Search
# Recursively searches for connected ores of the same type

# Increment vein size
scoreboard players add #vein_size ec.veinminer 1

# Stop if vein is too large (prevent lag on massive veins)
execute if score #vein_size ec.veinminer >= #max_vein_size ec.veinminer run return 0

# Search all 6 cardinal directions + 20 diagonal positions (full 3x3x3 cube minus center)

# Up
execute positioned ~ ~1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~ ~1 ~ if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

# Down
execute positioned ~ ~-1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~ ~-1 ~ if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

# North
execute positioned ~ ~ ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~ ~ ~-1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

# South
execute positioned ~ ~ ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~ ~ ~1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

# East
execute positioned ~1 ~ ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~1 ~ ~ if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

# West
execute positioned ~-1 ~ ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~-1 ~ ~ if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

# Diagonal edges (12 positions)
execute positioned ~1 ~1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~1 ~1 ~ if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~-1 ~1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~-1 ~1 ~ if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~ ~1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~ ~1 ~1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~ ~1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~ ~1 ~-1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~1 ~-1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~1 ~-1 ~ if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~-1 ~-1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~-1 ~-1 ~ if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~ ~-1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~ ~-1 ~1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~ ~-1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~ ~-1 ~-1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~1 ~ ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~1 ~ ~1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~1 ~ ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~1 ~ ~-1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~-1 ~ ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~-1 ~ ~1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~-1 ~ ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~-1 ~ ~-1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

# Diagonal corners (8 positions)
execute positioned ~1 ~1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~1 ~1 ~1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~1 ~1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~1 ~1 ~-1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~-1 ~1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~-1 ~1 ~1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~-1 ~1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~-1 ~1 ~-1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~1 ~-1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~1 ~-1 ~1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~1 ~-1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~1 ~-1 ~-1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~-1 ~-1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~-1 ~-1 ~1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search

execute positioned ~-1 ~-1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_vein_ore"]}
execute positioned ~-1 ~-1 ~-1 if entity @e[type=marker,tag=ec_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #vein_size ec.veinminer < #max_vein_size ec.veinminer run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_search
