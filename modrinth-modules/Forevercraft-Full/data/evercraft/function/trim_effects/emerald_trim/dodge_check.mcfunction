# Emerald Trim — Dodge check on taking damage
# Called by advancement trigger

# Only process if player has dodge chance
execute unless score @s te.dodge matches 1.. run return run advancement revoke @s only evercraft:trim_effects/emerald_dodge_trigger

# Roll 1-100
execute store result score #roll te.temp run random value 1..100

# If roll <= dodge chance, dodge!
execute if score #roll te.temp <= @s te.dodge run function evercraft:trim_effects/emerald_trim/dodge_success

# Revoke advancement to re-trigger on next hit
advancement revoke @s only evercraft:trim_effects/emerald_dodge_trigger
