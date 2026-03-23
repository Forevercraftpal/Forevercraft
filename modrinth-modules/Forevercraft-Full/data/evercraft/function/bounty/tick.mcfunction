# Patron Bounty — 2-second tick while any bounty is active
# Handles: biome check, distance update, timer, death detection

# Stop ticking if no active bounties
execute unless entity @a[scores={ec.bnt_tier=1..}] run return 0

# Process each player with an active bounty
execute as @a[scores={ec.bnt_tier=1..}] at @s run function evercraft:bounty/tick_player

schedule function evercraft:bounty/tick 2s
