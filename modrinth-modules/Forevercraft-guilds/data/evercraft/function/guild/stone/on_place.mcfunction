# Guild Stone — Detect placement and register
# @s = player who placed the lodestone (advancement trigger)
# First placement creates/claims the guild zone; re-placement after break needs guild membership

# Revoke advancement so it can trigger again
advancement revoke @s only evercraft:guild/place_guild_stone

# Find the placed block: raycast from eyes, then fallback grid scan
# (Same pattern as guidestone placement)
tag @s add ec.searching
scoreboard players set @s ec.gs_temp 0
execute at @s anchored eyes run function evercraft:guild/stone/raycast_place

# Fallback: grid scan if raycast missed (oblique angles)
execute if entity @s[tag=ec.searching] at @s align xyz run function evercraft:util/scan_for_lodestone {setup_function:"evercraft:guild/stone/setup_guild_stone"}
