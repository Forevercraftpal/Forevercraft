# ============================================================
# Black Market — Generate 14 Daily Deals (Unique)
# Picks 14 unique random items from the pool of 56
# Only regenerates if the day has changed
# ============================================================

# Check if deals are already current
execute store result score #bm_current_day ec.bm_temp run time query day
execute store result score #bm_deal_day ec.bm_temp run data get storage eden:database black_market.deal_day

# If same day, skip
execute if score #bm_current_day ec.bm_temp = #bm_deal_day ec.bm_temp run return 0

# New day — clear old deals and reset dedup tracker
data modify storage eden:database black_market.deals set value []
data modify storage eden:database black_market.used set value {}

# Roll 14 unique indices via recursive dedup
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique
function evercraft:black_market/roll_unique

# Store current day
execute store result storage eden:database black_market.deal_day int 1 run time query day
