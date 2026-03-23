# ============================================================
# Artifact Bounty Board — Generate 3 Daily Bounties (Unique)
# Picks 3 unique random artifacts from the pool of 25
# Only regenerates if the day has changed
# ============================================================

# Check if bounties are already current
execute store result score #abb_current_day ec.abb_temp run time query day
execute store result score #abb_bounty_day ec.abb_temp run data get storage eden:database bounty_board.bounty_day

# If same day, skip
execute if score #abb_current_day ec.abb_temp = #abb_bounty_day ec.abb_temp run return 0

# New day — clear old bounties and reset dedup tracker
data modify storage eden:database bounty_board.bounties set value []
data modify storage eden:database bounty_board.used set value {}

# Roll 3 unique indices via recursive dedup
function evercraft:bounty_board/roll_unique
function evercraft:bounty_board/roll_unique
function evercraft:bounty_board/roll_unique

# Store current day
execute store result storage eden:database bounty_board.bounty_day int 1 run time query day
