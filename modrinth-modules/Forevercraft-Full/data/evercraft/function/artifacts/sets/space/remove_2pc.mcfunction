# Space - Remove 2pc bonus
tag @s remove space_2pc
effect clear @s slow_falling
effect clear @s jump_boost
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Space 2pc bonus removed",color:"gray"}]
