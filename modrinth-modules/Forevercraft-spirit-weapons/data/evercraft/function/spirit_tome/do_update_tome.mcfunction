# Spirit Tome — Replace held tome with updated lore
# Uses item replace pattern (similar to Tome of Experience)

tag @s remove ec.sq_update_tome

# Write part number to storage for macro
execute store result storage evercraft:spirit_tome lore.part int 1 run scoreboard players get @s ec.sq_part

# Only update if holding the tome
execute unless items entity @s weapon.mainhand book[custom_data~{spirit_tome:true}] run return fail

# Check if all quests complete (part 101+)
execute if score @s ec.sq_part matches 101.. run return run function evercraft:spirit_tome/replace_tome_complete

# Replace with updated lore showing next quest number
function evercraft:spirit_tome/replace_tome with storage evercraft:spirit_tome lore
