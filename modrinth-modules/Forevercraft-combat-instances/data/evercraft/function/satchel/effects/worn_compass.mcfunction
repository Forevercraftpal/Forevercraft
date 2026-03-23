# Worn Compass — Slow Falling below Y=0
execute at @s if entity @s[y=-64,dy=64] unless score @s ec.t_wcompass matches 1 run effect give @s slow_falling 5 0 false
