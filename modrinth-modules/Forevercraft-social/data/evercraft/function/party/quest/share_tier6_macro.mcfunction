# Tier 6 shared progress — find max among party (macro)
# Args: pid (party ID), qid (quest ID)

# Get max progress from nearby party members with the same quest active
$execute as @a[scores={ec.party_id=$(pid),ec.quest_id_6=$(qid)},distance=..48] if score @s ec.quest_prog_6 > #pq_max ec.temp run scoreboard players operation #pq_max ec.temp = @s ec.quest_prog_6

# Also check our own progress
execute if score @s ec.quest_prog_6 > #pq_max ec.temp run scoreboard players operation #pq_max ec.temp = @s ec.quest_prog_6

# If party max is higher than ours, update our progress
execute if score #pq_max ec.temp > @s ec.quest_prog_6 run scoreboard players operation @s ec.quest_prog_6 = #pq_max ec.temp
