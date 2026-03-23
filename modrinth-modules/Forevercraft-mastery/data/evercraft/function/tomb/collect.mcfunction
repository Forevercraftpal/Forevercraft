# Tomb System — Owner Self-Collect
# @s = the owner player who walked within 1.5 blocks of their grave
# #tomb_g_uuid0-3 still set from tick_marker, so the nearest marker IS the correct one
# Restores full inventory + 50% XP

# Find the nearest grave marker that belongs to this player (verify UUID match)
execute as @e[type=marker,tag=ec.tomb_data,sort=nearest,limit=1,distance=..3] if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run tag @s add ec.tomb_collecting

# Bail if no matching marker found (edge case safety)
execute unless entity @e[type=marker,tag=ec.tomb_collecting,limit=1] run return 0

# Restore inventory from grave marker
function evercraft:tomb/collect_inventory

# Restore XP — 50% for self-collection
execute store result score #tomb_xp_give ec.temp run data get entity @e[type=marker,tag=ec.tomb_collecting,limit=1] data.XP
scoreboard players operation #tomb_xp_give ec.temp /= #2 ec.const
execute if score #tomb_xp_give ec.temp matches 1.. run function evercraft:tomb/give_xp

# Sync mastery tracker so soul XP doesn't count as mastery progress
execute store result score @s wm.prev_xp run experience query @s levels

# Play collection sounds
function evercraft:tomb/sounds/collect

# Collection particle burst (at grave position, which is where the marker is)
execute at @e[type=marker,tag=ec.tomb_collecting,limit=1] run particle minecraft:sculk_soul ~ ~0.5 ~ 0.4 0.5 0.4 0.03 20
execute at @e[type=marker,tag=ec.tomb_collecting,limit=1] run particle minecraft:end_rod ~ ~0.8 ~ 0.2 0.4 0.2 0.01 10

# Message
tellraw @s [{"text":"\n"},{"text":"⚔ ","color":"aqua"},{"text":"Your soul has been reclaimed.","color":"aqua"},{"text":"\n"}]

# Cancel pending companion offer if one exists
execute as @e[type=marker,tag=ec.tomb_collecting,tag=ec.tomb_pending,limit=1] run function evercraft:tomb/companion/cancel

# Cancel active revive channel if one exists
execute as @e[type=marker,tag=ec.tomb_collecting,tag=ec.tomb_reviving,limit=1] run function evercraft:tomb/revive/cancel_channel

# Cleanup — kill all entities for this grave
execute store result score #tomb_cleanup_id ec.temp run scoreboard players get @e[type=marker,tag=ec.tomb_collecting,limit=1] ec.tomb_id
function evercraft:tomb/cleanup_entities

tag @e[tag=ec.tomb_collecting] remove ec.tomb_collecting
