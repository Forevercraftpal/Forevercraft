# ============================================================
# Artifact Bounty Board — Roll Unique Index
# Rolls random 0..24, re-rolls recursively if duplicate,
# then marks used and appends bounty
# ============================================================

# Roll a random index
execute store result storage eden:database bounty_board.temp.index int 1 run random value 0..24

# Check if already used
scoreboard players set #abb_dup ec.abb_temp 0
function evercraft:bounty_board/check_used with storage eden:database bounty_board.temp

# If duplicate, re-roll recursively
execute if score #abb_dup ec.abb_temp matches 1 run return run function evercraft:bounty_board/roll_unique

# Not a duplicate — mark used and append bounty
function evercraft:bounty_board/mark_used with storage eden:database bounty_board.temp
function evercraft:bounty_board/append_bounty with storage eden:database bounty_board.temp
