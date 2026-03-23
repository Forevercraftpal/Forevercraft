# Ninja 4-Piece Bonus: Shadow Step — Speed II + Jump Boost II
execute unless entity @s[tag=ninja_4pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ninja 4pc: ",color:"dark_gray"},{text:"Shadow Step — Speed II + Jump Boost II",color:"gray"}]
tag @s add ninja_4pc
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 1 false
execute unless score @s ec.h_jump matches 2.. run effect give @s jump_boost 3 1 false
