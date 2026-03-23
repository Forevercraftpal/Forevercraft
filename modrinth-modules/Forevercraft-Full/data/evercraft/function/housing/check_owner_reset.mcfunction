# ============================================================
# Check if this player's home matches the broken hearthstone
# Run as: each player with hs.tier >= 1
# The broken marker's gs_id is in storage evercraft:guidestone remove_id
# ============================================================

# Get the remove_id into a score
execute store result score #hs_broken_id hs.temp run data get storage evercraft:guidestone remove_id

# If this player's gs_id matches the broken one, reset their home data
execute unless score @s hs.gs_id = #hs_broken_id hs.temp run return fail

# This is the owner — reset all home data
scoreboard players set @s hs.tier 0
scoreboard players set @s hs.home_x 0
scoreboard players set @s hs.home_y 0
scoreboard players set @s hs.home_z 0
scoreboard players set @s hs.home_dim 0
scoreboard players set @s hs.gs_id 0

# If they were in zone, clean up
execute if score @s hs.in_zone matches 1 run function evercraft:housing/zone/leave
scoreboard players set @s hs.in_zone 0

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your Hearthstone was destroyed. Place a new one to reclaim your home.",color:"red"}]
