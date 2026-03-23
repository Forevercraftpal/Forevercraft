# Heartstone — Regeneration I below 6 hearts
execute if predicate evercraft:health_below_12 unless score @s ec.t_heart matches 1 run effect give @s regeneration 5 0 false
