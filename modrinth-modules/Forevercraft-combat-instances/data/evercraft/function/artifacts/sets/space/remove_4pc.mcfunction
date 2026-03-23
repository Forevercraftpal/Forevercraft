# Space - Remove 4pc bonus
tag @s remove space_4pc
effect clear @s slow_falling
effect clear @s jump_boost
effect clear @s speed
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Space 4pc bonus removed",color:"gray"}]
