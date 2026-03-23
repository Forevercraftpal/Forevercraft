# Mark this position as looted for the current player
# Spawn an invisible marker at the chest position storing the player's UUID
# Includes refresh_timer (total duration) and looted_at (game time when looted) for time-based refresh
# Run as the player (position stored in cf.pos_x/y/z)

# Create marker at chest position with default 50 in-game day duration (3,600,000 ticks @ 72000/day)
summon marker ~ ~ ~ {Tags:["cf.looted_marker","cf.new_marker","smithed.entity"],data:{refresh_timer:3600000,looted_at:0L}}
execute store result entity @e[type=marker,tag=cf.new_marker,limit=1] Pos[0] double 1 run scoreboard players get @s cf.pos_x
execute store result entity @e[type=marker,tag=cf.new_marker,limit=1] Pos[1] double 1 run scoreboard players get @s cf.pos_y
execute store result entity @e[type=marker,tag=cf.new_marker,limit=1] Pos[2] double 1 run scoreboard players get @s cf.pos_z

# Store player UUID and structure ID in marker for refresh system
# Copy from @s (the looting player) — NOT @p which would resolve relative to the marker's position
data modify entity @e[type=marker,tag=cf.new_marker,limit=1] data.player_uuid set from entity @s UUID
execute store result entity @e[type=marker,tag=cf.new_marker,limit=1] data.struct_id int 1 run scoreboard players get @s cf.struct_id

# Store current game time so we can compute elapsed time later (works even in unloaded chunks)
execute store result entity @e[type=marker,tag=cf.new_marker,limit=1] data.looted_at long 1 run time query gametime

# Apply Explorer reduction: level * 2% off the refresh timer (max 50% at level 25)
execute if score @s adv.explorer matches 1.. run function evercraft:advantage/explorer/reduce_cooldown

tag @e[type=marker,tag=cf.new_marker] remove cf.new_marker

# First-find bonus (check BEFORE track_struct_type sets the flag)
function evercraft:structures/storage/first_find_check

# Track unique structure types for Wanderer's Dream Map
function evercraft:structures/storage/track_struct_type

# Increment advantage stat counter for Explorer tree
scoreboard players add @s adv.stat_struct 1
