# Tomb System — Tick Pending Offers (60s timeout)
# @s = grave marker with ec.tomb_pending tag
# Called from tick_marker every 10 ticks

# Decrement pending countdown
scoreboard players remove @s ec.tomb_pending_cd 1

# If timed out (countdown reached 0)
execute unless score @s ec.tomb_pending_cd matches 1.. run function evercraft:tomb/companion/cancel
