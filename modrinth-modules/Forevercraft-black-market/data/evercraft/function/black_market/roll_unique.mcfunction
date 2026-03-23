# ============================================================
# Black Market — Roll Unique Index
# Rolls random 0..55, re-rolls recursively if duplicate,
# then marks used and appends deal
# ============================================================

# Roll a random index
execute store result storage eden:database black_market.temp.index int 1 run random value 0..55

# Check if already used
scoreboard players set #bm_dup ec.bm_temp 0
function evercraft:black_market/check_used with storage eden:database black_market.temp

# If duplicate, re-roll recursively
execute if score #bm_dup ec.bm_temp matches 1 run return run function evercraft:black_market/roll_unique

# Not a duplicate — mark used and append deal
function evercraft:black_market/mark_used with storage eden:database black_market.temp
function evercraft:black_market/roll_deal with storage eden:database black_market.temp
