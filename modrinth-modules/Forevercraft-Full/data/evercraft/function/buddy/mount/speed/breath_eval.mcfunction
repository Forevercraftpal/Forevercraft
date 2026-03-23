# Buddy Mount Speed — Breath Evaluation
# @s = player riding buddy mount
# Check if 30s mark hit, apply slowdown

# Check if at 30-second mark (ride_cont is in seconds, checked every 1s)
scoreboard players operation #bd_breath_mod ec.temp = @s ec.bd_ride_cont
scoreboard players operation #bd_breath_mod ec.temp %= #30 ec.temp
execute unless score #bd_breath_mod ec.temp matches 0 run return fail

# Skip if breath is already active
execute if score @s ec.bd_breath matches 1 run return fail

# Activate breath slowdown
scoreboard players set @s ec.bd_breath 1

# Remove speed bonus temporarily
execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..5,limit=1] run attribute @s movement_speed modifier remove evercraft:buddy_mount_speed

# First occurrence notification
execute if score @s ec.bd_breath_ct matches 0 run function evercraft:buddy/mount/speed/breath_notify
scoreboard players add @s ec.bd_breath_ct 1

# Schedule speed restoration (5 seconds)
schedule function evercraft:buddy/mount/speed/breath_restore 100t append
