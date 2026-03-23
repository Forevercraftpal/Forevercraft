# ============================================================
# Create New Quest Board
# Creates marker and generates fresh quests for this village
# Runs positioned at the lectern block
# ============================================================

# Summon quest board marker (invisible armor stand)
summon armor_stand ~ ~ ~ {Tags:["quests.board","quests.new"],Invisible:1b,Marker:1b,NoGravity:1b,CustomName:{"text":"Quest Board","color":"gold"}}

# Assign village ID (use position-based hash for simplicity)
execute store result score @e[type=armor_stand,tag=quests.new,limit=1] ec.village_id positioned ~ 0 ~ run function evercraft:quests/board/calculate_village_id

# Assign village specialization based on biome
function evercraft:village/specialization/assign

# Convert a random villager to match village specialization
function evercraft:village/specialization/convert_villager

# Generate quest book for this board
function evercraft:quests/board/generate_book

# Remove new tag
tag @e[type=armor_stand,tag=quests.new] remove quests.new
