# ============================================================
# Refresh Quest Board
# Regenerates the 7 quests for this board
# ============================================================

# Clear current board quests
data modify storage eden:database quests.boards set value {}

# Select 7 new quests based on biome
function evercraft:quests/pool/select_7

# Regenerate the book
function evercraft:quests/board/generate_book
