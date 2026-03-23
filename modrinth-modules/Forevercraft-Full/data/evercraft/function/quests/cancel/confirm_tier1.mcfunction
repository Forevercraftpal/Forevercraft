# Cancel Tier 1 (Errand) Quest
# No reputation penalty for Errands
# Run as player

# Safety check — no quest to cancel
execute unless score @s ec.quest_id_1 matches 1.. run tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"You don't have an Errand to cancel.",color:"gray"}]
execute unless score @s ec.quest_id_1 matches 1.. run return 1

# Clear the quest
scoreboard players set @s ec.quest_id_1 0
scoreboard players set @s ec.quest_prog_1 0

playsound minecraft:entity.item.break player @s ~ ~ ~ 0.5 0.8
tellraw @s ["",{text:"[Forevercraft] ",color:"gold"},{text:"Errand cancelled.",color:"yellow"}]
