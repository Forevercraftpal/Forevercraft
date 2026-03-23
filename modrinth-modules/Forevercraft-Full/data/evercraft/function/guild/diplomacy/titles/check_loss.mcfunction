# Guild Diplomacy — Check and assign best eligible loser title
# @s = player who just lost an event
# Only assign if they don't already have a winner title active

# Skip if player has an active winner title (don't overwrite a win title with a loss title)
execute if score @s ec.gd_title matches 1..4 run return 0

# Clear other titles for mutual exclusivity
function evercraft:titles/clear_all

# Assign highest eligible tier (check top-down so highest sticks)
execute if score @s ec.gd_losses matches 1.. run scoreboard players set @s ec.gd_title 5
execute if score @s ec.gd_losses matches 5.. run scoreboard players set @s ec.gd_title 6
execute if score @s ec.gd_losses matches 15.. run scoreboard players set @s ec.gd_title 7
execute if score @s ec.gd_losses matches 30.. run scoreboard players set @s ec.gd_title 8

function evercraft:guild/diplomacy/titles/apply
