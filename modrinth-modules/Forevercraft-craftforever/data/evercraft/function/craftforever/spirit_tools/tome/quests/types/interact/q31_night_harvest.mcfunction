# Q31: Night Harvest — be outside at night (time 13000-23000) and have harvested crops
# Check time is nighttime
execute if score #visual_time ec.var matches 13000..23000 store result score #tq_tmp ec.var run scoreboard players get @s ach.crops_harvested
execute if score #visual_time ec.var matches 13000..23000 run scoreboard players operation #tq_tmp ec.var -= @s ec.tq_snap
execute if score #visual_time ec.var matches 13000..23000 if score #tq_tmp ec.var matches 1.. run scoreboard players set @s ec.tq_progress 1
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
