# Bounty — Per-player tick
# Run as player with active bounty, at player

# Decrement timer (2 seconds per tick)
scoreboard players remove @s ec.bnt_timer 2

# Timer expired
execute if score @s ec.bnt_timer matches ..0 run function evercraft:bounty/on_expire
execute if score @s ec.bnt_timer matches ..0 run return 0

# If patron not yet spawned, check biome + show status
execute if score @s ec.bnt_spawned matches 0 run function evercraft:bounty/check_biome
execute if score @s ec.bnt_spawned matches 0 run function evercraft:bounty/display_status

# OPT: Patron spawned — consolidated distance + death check (was 4 redundant score checks)
execute if score @s ec.bnt_spawned matches 1 run function evercraft:bounty/check_spawned
