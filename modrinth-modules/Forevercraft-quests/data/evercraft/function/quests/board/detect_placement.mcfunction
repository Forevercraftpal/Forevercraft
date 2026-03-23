# ============================================================
# Detect Book Placed on Lectern
# Checks if lectern is in a village and converts to quest board
# ============================================================

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:quests/quest_triggers/place_book_lectern

# Find the lectern the player just placed a book on (raycast up to 16 blocks)
scoreboard players set #lectern_ray ec.temp 0
execute at @s anchored eyes positioned ^ ^ ^0.5 run function evercraft:quests/board/find_lectern
