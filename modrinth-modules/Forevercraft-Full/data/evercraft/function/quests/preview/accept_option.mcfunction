# Accept a quest option from preview
# Macro: {num:N} where N is 1, 2, or 3
# Run as player

# Verify preview is active
execute unless score @s ec.qp_active matches 1 run return run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"No preview active.","color":"red"}]

# Copy selected option to quest slot based on tier
$execute if score @s ec.qp_tier matches 1 run scoreboard players operation @s ec.quest_id_1 = @s ec.qp_opt$(num)
$execute if score @s ec.qp_tier matches 2 run scoreboard players operation @s ec.quest_id_2 = @s ec.qp_opt$(num)
$execute if score @s ec.qp_tier matches 3 run scoreboard players operation @s ec.quest_id_3 = @s ec.qp_opt$(num)
$execute if score @s ec.qp_tier matches 4 run scoreboard players operation @s ec.quest_id_4 = @s ec.qp_opt$(num)
$execute if score @s ec.qp_tier matches 5 run scoreboard players operation @s ec.quest_id_5 = @s ec.qp_opt$(num)
$execute if score @s ec.qp_tier matches 6 run scoreboard players operation @s ec.quest_id_6 = @s ec.qp_opt$(num)

# Close preview
scoreboard players set @s ec.qp_active 0

# Run tier-specific setup
execute if score @s ec.qp_tier matches 1 run function evercraft:quests/board/setup_tier1
execute if score @s ec.qp_tier matches 2 run function evercraft:quests/board/setup_tier2
execute if score @s ec.qp_tier matches 3 run function evercraft:quests/board/setup_tier3
execute if score @s ec.qp_tier matches 4 run function evercraft:quests/board/setup_tier4
execute if score @s ec.qp_tier matches 5 run function evercraft:quests/board/setup_tier5
execute if score @s ec.qp_tier matches 6 run function evercraft:quests/board/setup_heroic
