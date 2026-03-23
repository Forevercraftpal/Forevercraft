# Q42: Nether Miner — be in the Nether and have mined blocks
# Check player dimension via predicate-style: if entity is in nether
execute if dimension minecraft:the_nether store result score #tq_tmp ec.var run scoreboard players get @s ach.blocks_mined
execute if dimension minecraft:the_nether run scoreboard players operation #tq_tmp ec.var -= @s ec.tq_snap
execute if dimension minecraft:the_nether if score #tq_tmp ec.var matches 1.. run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
