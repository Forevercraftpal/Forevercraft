# Tomb System — Companion Offer
# @s = player who right-clicked the grave (finder)
# #tomb_g_uuid0-3 ec.temp = grave owner's UUID (from tick_marker)

# Ensure finder's UUID scores are populated (store_uuid only runs on death,
# so a player who has never died would have no scores — breaking all matching)
function evercraft:tomb/store_uuid

# Check if this IS the owner (all 4 UUID parts match) — owners don't use right-click
scoreboard players set #tomb_match ec.temp 1
execute unless score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp run scoreboard players set #tomb_match ec.temp 0
execute unless score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp run scoreboard players set #tomb_match ec.temp 0
execute unless score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp run scoreboard players set #tomb_match ec.temp 0
execute unless score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run scoreboard players set #tomb_match ec.temp 0
# If match=1, this is the owner — tell them to walk closer
execute if score #tomb_match ec.temp matches 1 run tellraw @s [{"text":"Walk closer to reclaim your soul.","color":"gray","italic":true}]
execute if score #tomb_match ec.temp matches 1 run return 0

# Not the owner — this is a companion trying to help

# Check if grave already has a pending offer
execute if entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_pending,distance=..3,limit=1] run tellraw @s [{"text":"Someone is already offering to help.","color":"gray","italic":true}]
execute if entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_pending,distance=..3,limit=1] run return 0

# Check if grave is already bundled
execute if entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_bundled,distance=..3,limit=1] run tellraw @s [{"text":"This soul is already being carried.","color":"gray","italic":true}]
execute if entity @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_bundled,distance=..3,limit=1] run return 0

# Mark the grave as pending
execute as @e[type=marker,tag=ec.tomb_data,distance=..3,limit=1] run tag @s add ec.tomb_pending

# Store the finder's UUID on the grave marker for reference
scoreboard players operation @e[type=marker,tag=ec.tomb_pending,distance=..3,limit=1] ec.tomb_finder0 = @s ec.tomb_uuid0
scoreboard players operation @e[type=marker,tag=ec.tomb_pending,distance=..3,limit=1] ec.tomb_finder1 = @s ec.tomb_uuid1
scoreboard players operation @e[type=marker,tag=ec.tomb_pending,distance=..3,limit=1] ec.tomb_finder2 = @s ec.tomb_uuid2
scoreboard players operation @e[type=marker,tag=ec.tomb_pending,distance=..3,limit=1] ec.tomb_finder3 = @s ec.tomb_uuid3

# Set pending timer (60 seconds = 1200 ticks = 120 calls of 10t tick)
scoreboard players set @e[type=marker,tag=ec.tomb_pending,distance=..3,limit=1] ec.tomb_pending_cd 120

# Store the grave ID for the prompt macro
execute store result storage evercraft:tomb_temp pending_grave_id int 1 run scoreboard players get @e[type=marker,tag=ec.tomb_pending,distance=..3,limit=1] ec.tomb_id

# Play offer sounds
function evercraft:tomb/sounds/companion_offer

# Tell the finder to wait
tellraw @s [{"text":"You've offered to carry this fallen soul. Waiting for their response...","color":"gray","italic":true}]

# Send the prompt to the grave owner (find them by UUID match)
execute as @a if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run function evercraft:tomb/companion/prompt with storage evercraft:tomb_temp
