# Tome of Experience — Apply lore update to held item
# Runs as the player with ec.tome_update tag

tag @s remove ec.tome_update

# Only update if still holding the tome
execute unless items entity @s weapon.mainhand book[custom_data~{tome_of_experience:true}] run return fail

# Write current stored values to storage for macro
execute store result storage evercraft:tome temp.stored_levels int 1 run scoreboard players get @s ec.tome_lvl
execute store result storage evercraft:tome temp.stored_points int 1 run scoreboard players get @s ec.tome_pts

# Replace the item with updated lore
function evercraft:tome/replace_tome with storage evercraft:tome temp
