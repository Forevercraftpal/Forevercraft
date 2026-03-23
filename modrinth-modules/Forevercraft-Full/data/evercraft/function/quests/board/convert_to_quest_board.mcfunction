# ============================================================
# Convert Lectern to Quest Board
# Runs positioned at the lectern block
# ============================================================

# Check if there's already a quest board for this village
execute store result score #nearby_boards quests.temp if entity @e[type=armor_stand,tag=quests.board,distance=..96]

# If board exists nearby, link this lectern to the same village quests
execute if score #nearby_boards quests.temp matches 1.. run function evercraft:quests/board/link_existing

# If no board exists, create new quest board
execute if score #nearby_boards quests.temp matches 0 run function evercraft:quests/board/create_new

# Notify player
tellraw @a[distance=..10] ["",{text:"[Forevercraft] ",color:"gold"},{text:"Quest Board created! Right-click to view available quests.",color:"green"}]
playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1
particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.5 30
