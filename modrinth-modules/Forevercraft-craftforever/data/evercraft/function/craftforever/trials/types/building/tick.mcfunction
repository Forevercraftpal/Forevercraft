# Building Trial — Per-tick score tracking
# Run as/at: ec.tt_player in a building trial (type 4)
# Score = total blocks placed (cobble + dirt + planks) minus snapshot

# Current total placed
scoreboard players operation @s ec.tt_score = @s ec.tt_s_cobble
scoreboard players operation @s ec.tt_score += @s ec.tt_s_dirt
scoreboard players operation @s ec.tt_score += @s ec.tt_s_planks

# Subtract snapshot to get delta
scoreboard players operation @s ec.tt_score -= @s ec.tt_snap
