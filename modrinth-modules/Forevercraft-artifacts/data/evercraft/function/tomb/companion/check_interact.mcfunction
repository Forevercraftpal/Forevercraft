# Tomb System — Check Interaction (Right-Click on Grave)
# @s = interaction entity with tag ec.tomb_interact
# Called from tick_marker when interaction data is detected
# #tomb_g_uuid0-3 ec.temp = this grave's owner UUID (set by tick_marker)

# Extract the interacting player's UUID from the interaction data
execute store result score #tomb_click_uuid0 ec.temp run data get entity @s interaction.player[0]
execute store result score #tomb_click_uuid1 ec.temp run data get entity @s interaction.player[1]
execute store result score #tomb_click_uuid2 ec.temp run data get entity @s interaction.player[2]
execute store result score #tomb_click_uuid3 ec.temp run data get entity @s interaction.player[3]

# Clear the interaction data so it doesn't fire again
data remove entity @s interaction

# Check for healer revive (priority over companion offer)
execute store result score #revive_started ec.temp as @a if score @s ec.tomb_uuid0 = #tomb_click_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_click_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_click_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_click_uuid3 ec.temp run function evercraft:tomb/revive/check_healer
execute if score #revive_started ec.temp matches 1 run return 0

# Find the player who right-clicked by UUID match — companion offer (fallback)
execute as @a if score @s ec.tomb_uuid0 = #tomb_click_uuid0 ec.temp if score @s ec.tomb_uuid1 = #tomb_click_uuid1 ec.temp if score @s ec.tomb_uuid2 = #tomb_click_uuid2 ec.temp if score @s ec.tomb_uuid3 = #tomb_click_uuid3 ec.temp run function evercraft:tomb/companion/offer
