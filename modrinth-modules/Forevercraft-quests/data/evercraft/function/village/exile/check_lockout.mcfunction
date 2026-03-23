# ============================================================
# Check Exile Lockout Status
# Called when a player enters a village — checks if exile is active or expired
# Sets vs.exile to 1 (still exiled) or calls remove_lockout if expired
# Run as the player
# ============================================================

# Skip if not in a village
execute unless score @s ec.current_village matches 1.. run return fail

# Load exile data from storage
execute store result storage eden:temp vs.vid int 1 run scoreboard players get @s ec.current_village
execute store result storage eden:temp vs.uuid int 1 run data get entity @s UUID[0]
function evercraft:village/exile/check_lockout_macro with storage eden:temp vs
