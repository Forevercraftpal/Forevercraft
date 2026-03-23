# Tick a single looted marker's refresh timer
# Run as the marker entity
# Uses game-time comparison so timers work even in unloaded chunks

# Read refresh_timer (total duration) and looted_at (game time when looted)
execute store result score #refresh cf.temp run data get entity @s data.refresh_timer
execute store result score #looted_at cf.temp run data get entity @s data.looted_at

# Skip legacy markers without a refresh timer
execute if score #refresh cf.temp matches 0 run return 0

# Calculate elapsed time: current_game_time - looted_at
execute store result score #now cf.temp run time query gametime
scoreboard players operation #elapsed cf.temp = #now cf.temp
scoreboard players operation #elapsed cf.temp -= #looted_at cf.temp

# OPT: Single condition check instead of 5 duplicate score comparisons
execute if score #elapsed cf.temp >= #refresh cf.temp run function evercraft:structures/storage/on_refresh_ready
