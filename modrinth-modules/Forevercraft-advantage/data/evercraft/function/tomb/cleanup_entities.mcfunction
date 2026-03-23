# Tomb System — Kill All Entities for a Grave ID
# #tomb_cleanup_id ec.temp = the grave ID to clean up
# Kills: marker, sword display, stone display, flame marker, interaction entity

execute as @e[tag=ec.tomb] if score @s ec.tomb_id = #tomb_cleanup_id ec.temp run kill @s
