# Tomb System — Deliver Soul Bundle
# @s = the grave owner, within 1.5 blocks of the carrier
# The carrier is @a[tag=ec.tomb_carrier] matched by tick_delivery context

# Find the carrier (who called tick_delivery and found us)
# The carrier's carry ID tells us which marker has the data
# #tomb_carry_id ec.temp was set by tick_delivery

# Find the bundled marker
tag @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_bundled] remove ec.tomb_delivering
execute as @e[type=marker,tag=ec.tomb_data,tag=ec.tomb_bundled] if score @s ec.tomb_id = #tomb_carry_id ec.temp run tag @s add ec.tomb_delivering
execute unless entity @e[type=marker,tag=ec.tomb_delivering,limit=1] run return 0

# Restore inventory from marker
tag @e[type=marker,tag=ec.tomb_delivering,limit=1] add ec.tomb_collecting
function evercraft:tomb/collect_inventory
tag @e[type=marker,tag=ec.tomb_delivering,limit=1] remove ec.tomb_collecting

# XP: owner gets 25%, finder gets 25%
execute store result score #tomb_xp_total ec.temp run data get entity @e[type=marker,tag=ec.tomb_delivering,limit=1] data.XP
scoreboard players operation #tomb_xp_give ec.temp = #tomb_xp_total ec.temp
scoreboard players operation #tomb_xp_give ec.temp /= #4 ec.const
# Give owner 25% XP
execute if score #tomb_xp_give ec.temp matches 1.. run function evercraft:tomb/give_xp

# Give finder 25% XP (find carrier by UUID match)
scoreboard players operation #tomb_f_uuid0 ec.temp = @e[type=marker,tag=ec.tomb_delivering,limit=1] ec.tomb_finder0
scoreboard players operation #tomb_f_uuid1 ec.temp = @e[type=marker,tag=ec.tomb_delivering,limit=1] ec.tomb_finder1
scoreboard players operation #tomb_f_uuid2 ec.temp = @e[type=marker,tag=ec.tomb_delivering,limit=1] ec.tomb_finder2
scoreboard players operation #tomb_f_uuid3 ec.temp = @e[type=marker,tag=ec.tomb_delivering,limit=1] ec.tomb_finder3

# Store XP for display macro
execute store result storage evercraft:tomb_temp delivery_xp int 1 run scoreboard players get #tomb_xp_give ec.temp

# Give finder XP and notify them
execute as @a if score @s ec.tomb_uuid0 = #tomb_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_f_uuid3 ec.temp run function evercraft:tomb/companion/reward_finder

# Remove bundle from carrier
execute as @a if score @s ec.tomb_uuid0 = #tomb_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_f_uuid3 ec.temp run clear @s bundle[custom_data~{soul_bundle:1b}] 1
execute as @a if score @s ec.tomb_uuid0 = #tomb_f_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_f_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_f_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_f_uuid3 ec.temp run tag @s remove ec.tomb_carrier

# Play delivery sounds
function evercraft:tomb/sounds/delivery

# Particles at delivery location
particle minecraft:sculk_soul ~ ~0.5 ~ 0.4 0.5 0.4 0.03 20
particle minecraft:end_rod ~ ~0.8 ~ 0.2 0.4 0.2 0.01 10

# Message to owner
tellraw @s [{"text":"\n"},{"text":"⚔ ","color":"aqua"},{"text":"Your soul has been returned by a companion.","color":"aqua"},{"text":"\n"}]

# Cleanup — kill the marker (data already transferred)
execute store result score #tomb_cleanup_id ec.temp run scoreboard players get @e[type=marker,tag=ec.tomb_delivering,limit=1] ec.tomb_id
tag @e[tag=ec.tomb_delivering] remove ec.tomb_delivering
function evercraft:tomb/cleanup_entities
