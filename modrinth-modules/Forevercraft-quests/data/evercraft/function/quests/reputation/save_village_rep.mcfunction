# ============================================================
# Save Village Reputation
# Saves the player's reputation scoreboards to village-specific storage
# Execute as the player
# Falls back to ec.last_village when player is outside a village
# ============================================================

# Determine which village to save to: current village, or last village as fallback
execute if score @s ec.current_village matches 1.. store result storage eden:temp rep.vid int 1 run scoreboard players get @s ec.current_village
execute unless score @s ec.current_village matches 1.. if score @s ec.last_village matches 1.. store result storage eden:temp rep.vid int 1 run scoreboard players get @s ec.last_village
execute unless score @s ec.current_village matches 1.. unless score @s ec.last_village matches 1.. run return fail

# Get player UUID as string key (UUID[0] is unique enough for our purposes)
execute store result storage eden:temp rep.uuid int 1 run data get entity @s UUID[0]

# Store current reputation values in temp
execute store result storage eden:temp rep.save.rep int 1 run scoreboard players get @s ec.village_rep
execute store result storage eden:temp rep.save.rank int 1 run scoreboard players get @s ec.rep_rank

# Save reputation data to storage using macro
function evercraft:quests/reputation/save_village_rep_macro with storage eden:temp rep

# Check if rep dropped below 0 (exile trigger)
function evercraft:village/exile/check_rep
