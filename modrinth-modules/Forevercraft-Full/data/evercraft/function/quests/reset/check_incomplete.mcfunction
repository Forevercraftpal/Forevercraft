# ============================================================
# Check for Incomplete Quests — Rep Penalty
# Deducts reputation for accepted but uncompleted quests (Tier 2-5)
# Tier 1 (Errands) are exempt from penalties
# Run as each player
# ============================================================

# Skip if player has no village (can't lose rep without one)
execute unless score @s ec.current_village matches 1.. run return 0

# Track total penalty
scoreboard players set #quest_penalty vs.temp 0

# Tier 2 (Task) — accepted but not done = -15 rep
execute if score @s ec.quest_id_2 matches 1.. unless score @s ec.quest_done_2 matches 1 run scoreboard players add #quest_penalty vs.temp 15

# Tier 3 (Contract) — accepted but not done = -25 rep
execute if score @s ec.quest_id_3 matches 1.. unless score @s ec.quest_done_3 matches 1 run scoreboard players add #quest_penalty vs.temp 25

# Tier 4 (Commission) — accepted but not done = -40 rep
execute if score @s ec.quest_id_4 matches 1.. unless score @s ec.quest_done_4 matches 1 run scoreboard players add #quest_penalty vs.temp 40

# Tier 5 (Expedition) — accepted but not done = -60 rep
execute if score @s ec.quest_id_5 matches 1.. unless score @s ec.quest_done_5 matches 1 run scoreboard players add #quest_penalty vs.temp 60

# Apply penalty if any
execute if score #quest_penalty vs.temp matches 1.. run scoreboard players operation @s ec.village_rep -= #quest_penalty vs.temp
execute if score #quest_penalty vs.temp matches 1.. run function evercraft:quests/reputation/save_village_rep
execute if score #quest_penalty vs.temp matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You failed to complete your quests. ",color:"red"},{text:"-",color:"red"},{score:{name:"#quest_penalty",objective:"vs.temp"},color:"red"},{text:" reputation.",color:"red"}]
