# ============================================================
# Select 7 Quests for Board
# 2 Errand, 2 Task, 1 Contract, 1 Commission/Expedition, 1 Heroic
# Biome-weighted selection
# ============================================================

# Get current biome
function evercraft:biome/detect

# For now, use static quest selection
# Full implementation would use weighted random based on biome affinity

# Store selected quests in board storage
data modify storage eden:database temp.board_quests set value [1,4,1,3,1,7,1]
