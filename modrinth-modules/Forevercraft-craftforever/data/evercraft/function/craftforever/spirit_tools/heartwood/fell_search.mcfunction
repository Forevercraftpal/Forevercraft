# Heartwood — Recursive tree search (UNLIMITED)
# Check upward + horizontal neighbors for connected logs

scoreboard players add #st_tree_size ec.var 1
execute if score #st_tree_size ec.var matches 513.. run return 0

# Up
execute positioned ~ ~1 ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~ ~1 ~ if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

# Up-diagonals (8 positions — trees branch)
execute positioned ~1 ~1 ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~1 ~1 ~ if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

execute positioned ~-1 ~1 ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~-1 ~1 ~ if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

execute positioned ~ ~1 ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~ ~1 ~1 if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

execute positioned ~ ~1 ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~ ~1 ~-1 if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

execute positioned ~1 ~1 ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~1 ~1 ~1 if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

execute positioned ~1 ~1 ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~1 ~1 ~-1 if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

execute positioned ~-1 ~1 ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~-1 ~1 ~1 if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

execute positioned ~-1 ~1 ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~-1 ~1 ~-1 if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

# Horizontal (4 cardinal — for branching trunks)
execute positioned ~1 ~ ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~1 ~ ~ if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

execute positioned ~-1 ~ ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~-1 ~ ~ if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

execute positioned ~ ~ ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~ ~ ~1 if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search

execute positioned ~ ~ ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_st_timber,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_timber"]}
execute positioned ~ ~ ~-1 if entity @e[type=marker,tag=ec_st_timber,distance=..0.5,limit=1,sort=nearest] if score #st_tree_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/heartwood/fell_search
