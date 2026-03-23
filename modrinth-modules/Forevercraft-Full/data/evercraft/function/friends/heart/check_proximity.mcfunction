# Friend Heart — Check if any friends are nearby for proximity heart
# @s = player with at least 1 friend, at @s position
# Runs every 1s from friends/tick

# Find nearby players within 48 blocks (same as party range)
# For each nearby player, check if they're a friend and grant heart if daily not yet given

# Get self UUID3
execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp

# Increment proximity timer if near any friend
# First check: is anyone even nearby?
execute unless entity @a[distance=1..48,gamemode=!spectator] run scoreboard players set @s ec.fr_prox_timer 0
execute unless entity @a[distance=1..48,gamemode=!spectator] run return 0

# Someone is nearby — increment timer (1s per tick of this function)
scoreboard players add @s ec.fr_prox_timer 1

# After 60 consecutive seconds near someone, try to grant hearts
execute unless score @s ec.fr_prox_timer matches 60.. run return 0

# Reset timer
scoreboard players set @s ec.fr_prox_timer 0

# Copy friend list to temp for iteration
function evercraft:friends/heart/load_friends_list with storage evercraft:friends temp

# Check each friend in the list against nearby players
function evercraft:friends/heart/proximity_loop
