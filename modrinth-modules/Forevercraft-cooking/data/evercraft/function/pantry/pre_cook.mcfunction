# Pantry — Pre-Cook: Withdraw pantry items to player inventory
# Called from cook_dispatch before recipe checks
# Temporarily moves all stored items to player inventory so clear/check commands find them
# Requires player to have opened pantry at least once (sets ec.pid)

# Skip if player has never opened their pantry (ec.pid = 0 or unset)
execute unless score @s ec.pid matches 1.. run return 0

# Store pid to temp
execute store result storage evercraft:pantry temp.pid int 1 run scoreboard players get @s ec.pid

# Withdraw all slots
function evercraft:pantry/withdraw_slots with storage evercraft:pantry temp
