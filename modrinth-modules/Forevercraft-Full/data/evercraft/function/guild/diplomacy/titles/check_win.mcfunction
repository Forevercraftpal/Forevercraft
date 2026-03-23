# Guild Diplomacy — Check and assign best eligible winner title
# @s = player who just won an event

# Clear other titles for mutual exclusivity
function evercraft:titles/clear_all

# Assign highest eligible tier (check top-down so highest sticks)
execute if score @s ec.gd_wins matches 1.. run scoreboard players set @s ec.gd_title 1
execute if score @s ec.gd_wins matches 5.. run scoreboard players set @s ec.gd_title 2
execute if score @s ec.gd_wins matches 15.. run scoreboard players set @s ec.gd_title 3
execute if score @s ec.gd_wins matches 30.. run scoreboard players set @s ec.gd_title 4

function evercraft:guild/diplomacy/titles/apply
