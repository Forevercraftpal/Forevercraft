# Buddy Points — Sleeping (+2 per night slept with buddy nearby)
# Called from daylight/sleep_skip.mcfunction after successful sleep

# Award to all players who have a buddy within 16 blocks
execute as @a[scores={ec.bd_tier=0..}] at @s if entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run scoreboard players set #bd_pts_add ec.temp 2
execute as @a[scores={ec.bd_tier=0..}] at @s if entity @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions,distance=..16,limit=1] run function evercraft:buddy/points/add_points
