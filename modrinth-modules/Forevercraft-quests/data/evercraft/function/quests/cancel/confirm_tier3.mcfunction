# Cancel Tier 3 (Contract) Quest
# -25 reputation penalty
# Run as player

# Safety check — no quest to cancel
execute unless score @s ec.quest_id_3 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You don't have a Contract to cancel.",color:"gray"}]
execute unless score @s ec.quest_id_3 matches 1.. run return 1

# Clear the quest
scoreboard players set @s ec.quest_id_3 0
scoreboard players set @s ec.quest_prog_3 0

# Apply reputation penalty
scoreboard players remove @s ec.village_rep 25
function evercraft:quests/reputation/save_village_rep

playsound minecraft:entity.item.break player @s ~ ~ ~ 0.5 0.8
tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Contract cancelled. ",color:"yellow"},{text:"-25 reputation.",color:"red"}]
