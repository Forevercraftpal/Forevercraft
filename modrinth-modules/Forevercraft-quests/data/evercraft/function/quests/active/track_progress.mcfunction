# ============================================================
# Track Active Quest Progress
# Run for each player to update quest progress
# ============================================================

# Track each active tier
execute if score @s ec.quest_id_1 matches 1.. run function evercraft:quests/active/track_tier1
execute if score @s ec.quest_id_2 matches 1.. run function evercraft:quests/active/track_tier2
execute if score @s ec.quest_id_3 matches 1.. run function evercraft:quests/active/track_tier3
execute if score @s ec.quest_id_4 matches 1.. run function evercraft:quests/active/track_tier4
execute if score @s ec.quest_id_5 matches 1.. run function evercraft:quests/active/track_tier5
execute if score @s ec.quest_id_6 matches 1.. run function evercraft:quests/active/track_tier6
