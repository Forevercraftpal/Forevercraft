# Artisan Tome — Replace held tome with updated lore
tag @s remove ec.tq_update_tome

# Write part number to storage for macro
execute store result storage evercraft:artisan_tome lore.part int 1 run scoreboard players get @s ec.tq_part

# Only update if holding the tome
execute unless items entity @s weapon.mainhand book[custom_data~{artisan_tome:true}] run return fail

# Check if all quests complete (part 101+)
execute if score @s ec.tq_part matches 101.. run return run function evercraft:craftforever/spirit_tools/tome/replace_tome_complete

# Replace with updated lore showing next quest number
function evercraft:craftforever/spirit_tools/tome/replace_tome with storage evercraft:artisan_tome lore
