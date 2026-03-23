# Recursive raycast — step forward 0.1 blocks looking for suspicious blocks
# Max 160 steps = 16 blocks

execute if block ~ ~ ~ #evercraft:trim/sus_block run return run function evercraft:structures/archaeology/mark_block

scoreboard players add @s cf.temp 1
execute if score @s cf.temp matches ..159 positioned ^ ^ ^0.1 run function evercraft:structures/archaeology/raycast
