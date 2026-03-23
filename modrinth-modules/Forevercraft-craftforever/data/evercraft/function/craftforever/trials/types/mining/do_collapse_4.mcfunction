# T10 Collapse Phase 4 — Fill last 12 columns (total collapse)
execute store result storage evercraft:trials ax int 1 run scoreboard players get @s ec.tt_arena_x
execute store result storage evercraft:trials az int 1 run scoreboard players get @s ec.tt_arena_z
$execute positioned $(ax) 300 $(az) run fill ~36 ~ ~ ~47 ~22 ~47 bedrock
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.3
title @s title {"text":"TOTAL COLLAPSE","color":"dark_red","bold":true}
