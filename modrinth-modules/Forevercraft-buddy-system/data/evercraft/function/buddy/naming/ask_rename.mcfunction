# Buddy Naming — Ask Rename (mob already has a CustomName)
# @s = the target mob entity (HAS CustomName)
# Shows [Keep] / [Rename] prompt

# Store the mob's current name for display
data modify storage evercraft:buddy temp.current_name set from entity @s CustomName

# Show prompt to the player
execute as @a if score @s companion.id = #bd_owner ec.temp run function evercraft:buddy/naming/show_rename_prompt with storage evercraft:buddy temp
