# Infinite Castle — Update Continue Button Text with floor/key numbers
# Run as: player with record

# Store values for macro
execute store result storage evercraft:castle menu.record int 1 run scoreboard players get @s ic.record
execute store result storage evercraft:castle menu.keys int 1 run scoreboard players get #ic_key_cost_continue ec.var

# Update text via macro
function evercraft:castle/menu/set_continue_text with storage evercraft:castle menu
