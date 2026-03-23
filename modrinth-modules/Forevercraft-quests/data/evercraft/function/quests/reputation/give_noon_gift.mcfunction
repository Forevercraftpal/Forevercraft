# ============================================================
# Give Noon Gift to Hero
# ============================================================

# Base 25% chance, Legend gets 50%
scoreboard players set @s ec.quest_roll 0
execute store result score @s ec.quest_roll run random value 1..100

# Legend rank (5): 50% chance
execute if score @s ec.rep_rank matches 5 if score @s ec.quest_roll matches 1..50 run function evercraft:quests/reputation/noon_gift_success

# Hero rank (4): 25% chance
execute if score @s ec.rep_rank matches 4 if score @s ec.quest_roll matches 1..25 run function evercraft:quests/reputation/noon_gift_success
