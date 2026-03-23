# Buddy Naming — Keep Name (player chose to keep existing name)
# @s = player
# Finalize the buddy with its current CustomName

scoreboard players set @s ec.bd_confirm 0
scoreboard players enable @s ec.bd_confirm

# Finalize the buddy bond using the existing name
function evercraft:buddy/designate/set_buddy_data
