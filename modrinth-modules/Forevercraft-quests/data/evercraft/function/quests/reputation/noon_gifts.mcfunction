# ============================================================
# Noon Gift Distribution
# Heroes in villages receive random gifts from villagers
# Per-village: checks loaded ec.rep_rank for current village
# ============================================================

# Mark noon as processed
scoreboard players set #quest_noon_gifted ec.var 1

# For each player with Hero+ rank (4+) in their CURRENT village
# ec.rep_rank is loaded per-village when player enters the village
execute as @a[scores={ec.rep_rank=4..}] at @s if score @s ec.current_village matches 1.. run function evercraft:quests/reputation/give_noon_gift
