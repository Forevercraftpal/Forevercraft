# Reset a vault block's rewarded_players list so it can be opened again
# Run as the marker entity (at vault position), after timer expiry
# Only affects vault struct_ids (21=Trial Vault, 22=Ominous Vault)

# Read struct_id to verify this is a vault marker
execute store result score #rv_struct cf.temp run data get entity @s data.struct_id

# Only proceed for vault types
execute unless score #rv_struct cf.temp matches 21..22 run return 0

# Clear the rewarded_players list at this block position
execute at @s run data remove block ~ ~ ~ server_data.rewarded_players[]
