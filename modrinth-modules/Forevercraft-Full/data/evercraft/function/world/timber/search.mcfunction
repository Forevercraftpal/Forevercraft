# Timber (5% Any Axe) — Recursive search for connected logs
# Uses markers to track visited blocks, checks all directions (max 32 logs)

# Increment counter
scoreboard players add #timber_count ec.var 1

# Stop if we've found 32 logs
execute if score #timber_count ec.var matches 32.. run return 0

# Search upward (primary direction for trees)
execute positioned ~ ~1 ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~ ~1 ~ if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

# Search diagonal up (8 directions)
execute positioned ~1 ~1 ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~1 ~1 ~ if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

execute positioned ~-1 ~1 ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~-1 ~1 ~ if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

execute positioned ~ ~1 ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~ ~1 ~1 if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

execute positioned ~ ~1 ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~ ~1 ~-1 if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

execute positioned ~1 ~1 ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~1 ~1 ~1 if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

execute positioned ~-1 ~1 ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~-1 ~1 ~-1 if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

execute positioned ~1 ~1 ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~1 ~1 ~-1 if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

execute positioned ~-1 ~1 ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~-1 ~1 ~1 if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

# Search horizontally (4 directions — for branches)
execute positioned ~1 ~ ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~1 ~ ~ if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

execute positioned ~-1 ~ ~ if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~-1 ~ ~ if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

execute positioned ~ ~ ~1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~ ~ ~1 if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search

execute positioned ~ ~ ~-1 if predicate evercraft:mythical_tools/is_log unless entity @e[type=marker,tag=ec_stmb_log,distance=..0.5] run summon marker ~ ~ ~ {Tags:["ec_stmb_log"]}
execute positioned ~ ~ ~-1 if entity @e[type=marker,tag=ec_stmb_log,distance=..0.5,limit=1,sort=nearest] if score #timber_count ec.var matches ..31 run function evercraft:world/timber/search
