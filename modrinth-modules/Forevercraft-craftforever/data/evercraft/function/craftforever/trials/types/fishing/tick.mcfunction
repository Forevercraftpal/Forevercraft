# Fishing Trial — Per-tick score tracking
# Run as/at: ec.tt_player in a fishing trial (type 3)
# All tiers track the same stat: fish_caught

# Fish caught delta
scoreboard players operation @s ec.tt_score = @s ec.tt_s_fish
scoreboard players operation @s ec.tt_score -= @s ec.tt_snap
