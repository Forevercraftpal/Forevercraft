# ============================================================
# Check Village Proximity
# Converts lectern to quest board if near village center
# Runs positioned at the lectern block
# ============================================================

# Check if this lectern already has a quest board marker
execute if entity @e[type=armor_stand,tag=quests.board,distance=..1] run return 0

# Check if we're near a village (bell or village marker within 96 blocks)
# Method 1: Check for bell (village center indicator)
execute unless block ~ ~ ~ minecraft:lectern[has_book=true] run return 0

# Check for nearby bell (usually marks village center)
execute if entity @e[type=villager,distance=..48,limit=1] run function evercraft:quests/board/convert_to_quest_board
execute unless entity @e[type=villager,distance=..48] run tellraw @a[distance=..5] ["",{text:"[Forevercraft] ",color:"gold"},{text:"Place this lectern near villagers to create a Quest Board.",color:"gray"}]
