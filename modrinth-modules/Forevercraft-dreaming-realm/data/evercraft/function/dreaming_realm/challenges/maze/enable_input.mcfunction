# Memory Maze — Enable Input
# Called after sequence display completes. Player can now step on colors.

execute as @a[tag=dr.in_realm] run tag @s add dr.maze_input
execute as @a[tag=dr.in_realm] run tellraw @s [{text:""},{"text":"✦ ","color":"gold"},{"text":"Now repeat the sequence! Step on the colors in order.","color":"#D4A574","italic":true}]
execute as @a[tag=dr.in_realm] run playsound block.note_block.bell master @s ~ ~ ~ 1.0 1.0
