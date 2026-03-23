# Buddy Naming — Extract Name from Signed Charter
# @s = player who just signed the buddy charter
# Same pattern as guild/create.mcfunction

# Revoke advancement for re-fire
advancement revoke @s only evercraft:buddy/signed_charter

# Verify player is in naming flow
execute unless score @s ec.bd_naming matches 1 run return fail

# Extract name from page 1 of the signed book (SelectedItem = the signed charter)
data modify storage evercraft:buddy temp.name set from entity @s SelectedItem.components."minecraft:written_book_content".pages[0].raw

# Consume the charter
clear @s minecraft:written_book[custom_data~{buddy_charter:1b}] 1

# Clear naming flag
scoreboard players set @s ec.bd_naming 0

# Apply the name to the target entity
# Find the entity tagged as designating target
execute as @e[tag=ec.bd_designating_target,limit=1] run function evercraft:buddy/naming/apply_name with storage evercraft:buddy temp

# Finalize the buddy bond
function evercraft:buddy/designate/set_buddy_data
