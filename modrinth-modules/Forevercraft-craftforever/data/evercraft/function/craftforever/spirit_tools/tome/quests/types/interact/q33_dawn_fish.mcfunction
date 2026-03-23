# Q33: Fishing at Dawn — catch fish at dawn (time 23000-24000 or 0-1000)
# Check if dawn window
scoreboard players set #tq_dawn ec.var 0
execute if score #visual_time ec.var matches 23000..24000 run scoreboard players set #tq_dawn ec.var 1
execute if score #visual_time ec.var matches 0..1000 run scoreboard players set #tq_dawn ec.var 1
# Check if fish caught since snapshot
execute if score #tq_dawn ec.var matches 1 store result score #tq_tmp ec.var run scoreboard players get @s ec.tq_fish
execute if score #tq_dawn ec.var matches 1 run scoreboard players operation #tq_tmp ec.var -= @s ec.tq_snap
execute if score #tq_dawn ec.var matches 1 if score #tq_tmp ec.var matches 1.. run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
