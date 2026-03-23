# Void Ring — Resistance II + Fire Resistance I + Slow Falling I (Mythical)
# Harmony: resistance yields to compounded resistance if 2+ sources
execute if score @s ec.h_resist matches ..1 run effect give @s resistance 15 1 false
# Fire resistance and slow falling are not harmonizable — always apply
effect give @s fire_resistance 15 0 false
effect give @s slow_falling 15 0 false
