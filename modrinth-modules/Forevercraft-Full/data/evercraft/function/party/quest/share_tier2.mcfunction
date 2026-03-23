# Share Tier 2 kill quest progress with party members
# Run as player with kill quest in tier 2

# Reset max tracker before scanning
scoreboard players set #pq_max ec.temp 0

# Store quest ID and party ID for macro matching
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id
execute store result storage evercraft:party temp.qid int 1 run scoreboard players get @s ec.quest_id_2

# Find maximum progress among nearby party members with same quest
function evercraft:party/quest/share_tier2_macro with storage evercraft:party temp
