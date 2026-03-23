# Quest 99: Everything — Complete 75 quests AND visit all 24 biomes
# Both conditions must be met simultaneously

scoreboard players set #sq_meta_ok ec.var 0

# Check condition 1: 75+ quests completed
execute if score @s ach.quests_done matches 75.. run scoreboard players add #sq_meta_ok ec.var 1

# Check condition 2: 24+ biomes visited
execute if score @s ach.biomes_visited matches 24.. run scoreboard players add #sq_meta_ok ec.var 1

# Both conditions met
execute if score #sq_meta_ok ec.var matches 2 run function evercraft:spirit_tome/complete

# Show progress: display the harder condition
execute store result score @s ec.sq_progress run scoreboard players get @s ach.quests_done
