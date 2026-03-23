# Trade Trial — Cleanup
# Fills arena with air, teleports player back, resets state
# Run as: the player OR from schedule (uses @a[tag=ec.tt_player])

# Process each trial player
execute as @a[tag=ec.tt_player] at @s run function evercraft:craftforever/trials/cleanup_player
