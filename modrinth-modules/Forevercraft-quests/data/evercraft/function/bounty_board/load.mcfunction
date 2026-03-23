# ============================================================
# Artifact Bounty Board — Load / Init
# Called from init.mcfunction
# ============================================================

# Scoreboards — per-player claim tracking (0=unclaimed, 1=claimed today)
scoreboard objectives add ec.abb_claim_0 dummy
scoreboard objectives add ec.abb_claim_1 dummy
scoreboard objectives add ec.abb_claim_2 dummy
scoreboard objectives add ec.abb_temp dummy

# Init storage namespace if missing
execute unless data storage eden:database bounty_board run data modify storage eden:database bounty_board set value {}

# Kill ALL ABB entities on reload — tick will respawn fresh
kill @e[type=text_display,tag=ABB.Label]
kill @e[type=text_display,tag=ABB.QBLabel]
kill @e[type=interaction,tag=ABB.Click]
kill @e[type=marker,tag=ABB.Marker]

# Load the 25-artifact pool (includes color field)
function evercraft:bounty_board/data/artifact_pool

# Force bounty regeneration to pick up updated pool
data modify storage eden:database bounty_board.bounty_day set value -1

# Start 1s tick
schedule function evercraft:bounty_board/tick 1s replace
