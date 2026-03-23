# === DUSTWALKER — DISPATCH MINE ===
# Run as player. Execute at marker for position context.

execute at @e[type=marker,tag=ec.st_shov_target,limit=1,sort=nearest] if predicate evercraft:is_sneaking run function evercraft:craftforever/spirit_tools/dustwalker/column_bore
execute at @e[type=marker,tag=ec.st_shov_target,limit=1,sort=nearest] unless predicate evercraft:is_sneaking run function evercraft:craftforever/spirit_tools/dustwalker/area_dig_5x5

execute at @e[type=marker,tag=ec.st_shov_target,limit=1,sort=nearest] run particle block{block_state:"dirt"} ~ ~0.5 ~ 0.5 0.5 0.5 0.2 10
