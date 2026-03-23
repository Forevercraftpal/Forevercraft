# ============================================================
# Load Village Reputation
# Loads the player's reputation for the current village into scoreboards
# Execute as the player, requires ec.current_village to be set
# Sets ec.village_rep and ec.rep_rank for this village
# ============================================================

# If not in a village, set defaults and return
execute unless score @s ec.current_village matches 1.. run scoreboard players set @s ec.village_rep 0
execute unless score @s ec.current_village matches 1.. run scoreboard players set @s ec.rep_rank 0
execute unless score @s ec.current_village matches 1.. run return fail

# Store village ID in temp storage for macro
execute store result storage eden:temp rep.vid int 1 run scoreboard players get @s ec.current_village

# Get player UUID as string key (UUID[0] is unique enough for our purposes)
execute store result storage eden:temp rep.uuid int 1 run data get entity @s UUID[0]

# Load reputation data from storage using macro
function evercraft:quests/reputation/load_village_rep_macro with storage eden:temp rep
