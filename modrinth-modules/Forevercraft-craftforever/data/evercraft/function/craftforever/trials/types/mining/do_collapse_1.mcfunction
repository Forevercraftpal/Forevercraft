# T10 Collapse — Fill back 12 columns with bedrock
execute store result storage evercraft:trials ax int 1 run scoreboard players get @s ec.tt_arena_x
execute store result storage evercraft:trials az int 1 run scoreboard players get @s ec.tt_arena_z
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~ ~11 ~22 ~47 bedrock
title @s title {"text":"THE CAVE IS COLLAPSING!","color":"dark_red","bold":true}
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.5
playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 0.8 0.3
