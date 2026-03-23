# Party Quest Progress Sharing
# Called from quests/tick AFTER track_progress
# For kill quests: nearby party members with the same active quest share the highest progress
# Run as each player

# Skip if not in a party or no nearby members
execute unless score @s ec.party_id matches 1.. run return 0
execute unless score @s ec.party_nearby matches 1.. run return 0

# For each active quest tier, check if it's a kill quest and share max progress
# We store our quest_id and progress, then use macro to find the max among party
execute if score @s ec.quest_id_1 matches 4..21 run function evercraft:party/quest/share_tier1
execute if score @s ec.quest_id_2 matches 4..21 run function evercraft:party/quest/share_tier2
execute if score @s ec.quest_id_3 matches 4..21 run function evercraft:party/quest/share_tier3
execute if score @s ec.quest_id_4 matches 4..21 run function evercraft:party/quest/share_tier4
execute if score @s ec.quest_id_5 matches 4..21 run function evercraft:party/quest/share_tier5
execute if score @s ec.quest_id_6 matches 4..21 run function evercraft:party/quest/share_tier6
