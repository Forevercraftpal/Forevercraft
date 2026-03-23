# Tomb System — Actionbar Display (macro)
# $(minutes) = minutes remaining, $(seconds) = seconds remaining
# #tomb_g_uuid0-3 ec.temp = this grave's owner UUID (set by tick_marker)
# Shows timer to owner, name-only to others

# Owner within 10 blocks — show timer based on phase
# Fading phase (< 1 min)
$execute if score #tomb_remaining ec.temp matches ..1200 as @a[distance=..10] if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run title @s actionbar [{"text":"⚔ Your Soul — ","color":"gray"},{"text":"$(minutes)m $(seconds)s","color":"dark_red","bold":true}]

# Warning phase (1-5 min)
$execute if score #tomb_remaining ec.temp matches 1201..7200 as @a[distance=..10] if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run title @s actionbar [{"text":"⚔ Your Soul — ","color":"gray"},{"text":"$(minutes)m $(seconds)s","color":"red"}]

# Normal phase (5+ min)
$execute if score #tomb_remaining ec.temp matches 7201.. as @a[distance=..10] if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run title @s actionbar [{"text":"⚔ Your Soul — ","color":"gray"},{"text":"$(minutes)m $(seconds)s remaining","color":"aqua"}]

# Tag the owner so we can exclude them from non-owner display
execute as @a[distance=..10] if score @s ec.tomb_uuid0 = #tomb_g_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_g_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_g_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_g_uuid3 ec.temp run tag @s add ec.tomb_is_owner

# Non-owner within 10 blocks — show "A Fallen Soul" (no timer, no owner name needed)
execute as @a[distance=..10,tag=!ec.tomb_is_owner] run title @s actionbar [{"text":"⚔ ","color":"gray"},{"text":"A Fallen Soul","color":"gold"}]

# Clean up tag
tag @a[tag=ec.tomb_is_owner] remove ec.tomb_is_owner
