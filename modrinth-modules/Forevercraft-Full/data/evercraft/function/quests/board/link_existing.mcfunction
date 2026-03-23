# ============================================================
# Link Lectern to Existing Quest Board
# Copies quest data from nearby board so all boards show same quests
# Runs positioned at the lectern block
# ============================================================

# Summon quest board marker linked to existing village
summon armor_stand ~ ~ ~ {Tags:["quests.board","quests.new","quests.linked"],Invisible:1b,Marker:1b,NoGravity:1b,CustomName:{"text":"Quest Board","color":"gold"}}

# Copy village ID from nearest existing board
execute as @e[type=armor_stand,tag=quests.new,limit=1] run scoreboard players operation @s ec.village_id = @e[type=armor_stand,tag=quests.board,tag=!quests.new,distance=..96,limit=1,sort=nearest] ec.village_id

# Generate the same quest book (will show same quests due to shared village ID)
function evercraft:quests/board/generate_book

# Remove tags
tag @e[type=armor_stand,tag=quests.new] remove quests.new
tag @e[type=armor_stand,tag=quests.linked] remove quests.linked

tellraw @a[distance=..10] ["",{"text":"[Quests] ","color":"gold"},{"text":"Linked to nearby Quest Board - showing same quests.","color":"aqua"}]
