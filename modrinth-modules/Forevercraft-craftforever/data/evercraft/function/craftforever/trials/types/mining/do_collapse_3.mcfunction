# T10 Collapse Phase 3 — Fill next 12 columns
execute store result storage evercraft:trials ax int 1 run scoreboard players get @s ec.tt_arena_x
execute store result storage evercraft:trials az int 1 run scoreboard players get @s ec.tt_arena_z
$execute positioned $(ax) 300 $(az) run fill ~24 ~ ~ ~35 ~22 ~47 bedrock
playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.5
tellraw @s {"text":"Only a sliver remains!","color":"dark_red","italic":true}
