# ============================================================
# Artifact Bounty Board — Check Slot 0
# Run as player. Copies bounty[0].id → temp, checks match
# ============================================================

# Copy bounty 0's artifact ID to temp for macro
data modify storage eden:database bounty_board.temp.id set from storage eden:database bounty_board.bounties[0].id

# Check if held item matches
function evercraft:bounty_board/match_held with storage eden:database bounty_board.temp

# If matched, turn in slot 0
execute if score #abb_matched ec.abb_temp matches 1 run function evercraft:bounty_board/turn_in_0
