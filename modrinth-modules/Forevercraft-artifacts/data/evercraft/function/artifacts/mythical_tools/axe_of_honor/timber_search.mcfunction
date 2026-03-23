# Axe of Honor - Timber Search
# Recursively searches for connected logs

# Increment tree size
scoreboard players add #tree_size ec.timber 1

# Stop if tree is too large
execute if score #tree_size ec.timber >= #max_tree_size ec.timber run return 0

# Search upward (primary direction for trees)
execute positioned ~ ~1 ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~ ~1 ~ if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

# Search diagonal up
execute positioned ~1 ~1 ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~1 ~1 ~ if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

execute positioned ~-1 ~1 ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~-1 ~1 ~ if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

execute positioned ~ ~1 ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~ ~1 ~1 if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

execute positioned ~ ~1 ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~ ~1 ~-1 if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

execute positioned ~1 ~1 ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~1 ~1 ~1 if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

execute positioned ~-1 ~1 ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~-1 ~1 ~-1 if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

execute positioned ~1 ~1 ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~1 ~1 ~-1 if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

execute positioned ~-1 ~1 ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~-1 ~1 ~1 if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

# Search horizontally (for branches)
execute positioned ~1 ~ ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~1 ~ ~ if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

execute positioned ~-1 ~ ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~-1 ~ ~ if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

execute positioned ~ ~ ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~ ~ ~1 if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search

execute positioned ~ ~ ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_timber_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_timber_log"]}
execute positioned ~ ~ ~-1 if entity @e[type=marker,tag=ec_timber_log,distance=..0.5,limit=1,sort=nearest] if score #tree_size ec.timber < #max_tree_size ec.timber run function evercraft:artifacts/mythical_tools/axe_of_honor/timber_search
