# Earthsong — Recursive vein search (UNLIMITED — no cap)
# Adapted from Journey Pickaxe but without max_vein_size check
# Check all 26 neighbors for matching ore type

scoreboard players add #st_vein_size ec.var 1

# Safety cap at 512 to prevent server hang on absurd veins
execute if score #st_vein_size ec.var matches 513.. run return 0

# 6 cardinal directions
execute positioned ~ ~1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~ ~1 ~ if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~ ~-1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~ ~-1 ~ if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~ ~ ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~ ~ ~-1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~ ~ ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~ ~ ~1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~1 ~ ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~1 ~ ~ if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~-1 ~ ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~-1 ~ ~ if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

# 12 edge diagonals
execute positioned ~1 ~1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~1 ~1 ~ if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~-1 ~1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~-1 ~1 ~ if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~ ~1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~ ~1 ~1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~ ~1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~ ~1 ~-1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~1 ~-1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~1 ~-1 ~ if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~-1 ~-1 ~ if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~-1 ~-1 ~ if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~ ~-1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~ ~-1 ~1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~ ~-1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~ ~-1 ~-1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~1 ~ ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~1 ~ ~1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~1 ~ ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~1 ~ ~-1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~-1 ~ ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~-1 ~ ~1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~-1 ~ ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~-1 ~ ~-1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

# 8 corner diagonals
execute positioned ~1 ~1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~1 ~1 ~1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~1 ~1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~1 ~1 ~-1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~-1 ~1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~-1 ~1 ~1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~-1 ~1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~-1 ~1 ~-1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~1 ~-1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~1 ~-1 ~1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~1 ~-1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~1 ~-1 ~-1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~-1 ~-1 ~1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~-1 ~-1 ~1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search

execute positioned ~-1 ~-1 ~-1 if predicate evercraft:mythical_tools/is_ore unless entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_st_vein_ore"]}
execute positioned ~-1 ~-1 ~-1 if entity @e[type=marker,tag=ec_st_vein_ore,distance=..0.5,limit=1,sort=nearest] if score #st_vein_size ec.var matches ..512 run function evercraft:craftforever/spirit_tools/earthsong/vein_search
