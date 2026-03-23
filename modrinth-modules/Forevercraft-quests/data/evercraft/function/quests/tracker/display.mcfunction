# Quest Auto-Tracker — Adaptive periodic chat reminder
# Run as player with ec.quest_tracking tag

# Increment reminder timer (counts seconds)
scoreboard players add @s ec.qst_remind 1

# Compute combined progress for change detection (sum of all active tiers)
scoreboard players set #qst_total quests.temp 0
execute if score @s ec.quest_id_1 matches 1.. run scoreboard players operation #qst_total quests.temp += @s ec.quest_prog_1
execute if score @s ec.quest_id_2 matches 1.. run scoreboard players operation #qst_total quests.temp += @s ec.quest_prog_2
execute if score @s ec.quest_id_3 matches 1.. run scoreboard players operation #qst_total quests.temp += @s ec.quest_prog_3
execute if score @s ec.quest_id_4 matches 1.. run scoreboard players operation #qst_total quests.temp += @s ec.quest_prog_4
execute if score @s ec.quest_id_5 matches 1.. run scoreboard players operation #qst_total quests.temp += @s ec.quest_prog_5
execute if score @s ec.quest_id_6 matches 1.. run scoreboard players operation #qst_total quests.temp += @s ec.quest_prog_6

# Check if progress changed since last snapshot
scoreboard players operation #qst_delta quests.temp = #qst_total quests.temp
scoreboard players operation #qst_delta quests.temp -= @s ec.qst_lprog

# Determine interval: progress changed = 60s (active), no change = 600s (inactive)
scoreboard players set #qst_interval quests.temp 600
execute unless score #qst_delta quests.temp matches 0 run scoreboard players set #qst_interval quests.temp 60

# Check if timer >= interval
scoreboard players operation #qst_ready quests.temp = @s ec.qst_remind
scoreboard players operation #qst_ready quests.temp -= #qst_interval quests.temp

# If ready, show reminder for highest-priority active quest and reset
execute unless score #qst_ready quests.temp matches 0.. run return 0

# Display highest-priority active quest (6→1), then bounty
execute if score @s ec.quest_id_6 matches 1.. run return run function evercraft:quests/tracker/show_quest_6
execute if score @s ec.quest_id_5 matches 1.. run return run function evercraft:quests/tracker/show_quest_5
execute if score @s ec.quest_id_4 matches 1.. run return run function evercraft:quests/tracker/show_quest_4
execute if score @s ec.quest_id_3 matches 1.. run return run function evercraft:quests/tracker/show_quest_3
execute if score @s ec.quest_id_2 matches 1.. run return run function evercraft:quests/tracker/show_quest_2
execute if score @s ec.quest_id_1 matches 1.. run return run function evercraft:quests/tracker/show_quest_1

# Bounty fallback
execute if score @s ec.bnt_tier matches 1.. run tellraw @s [{text:"✦ ",color:"gold"},{text:"Bounty Active ",color:"red"},{text:"| Timer: ",color:"dark_gray"},{score:{name:"@s",objective:"ec.bnt_timer"},color:"gold"}]
execute if score @s ec.bnt_tier matches 1.. run scoreboard players set @s ec.qst_remind 0
execute if score @s ec.bnt_tier matches 1.. run scoreboard players operation @s ec.qst_lprog = #qst_total quests.temp
