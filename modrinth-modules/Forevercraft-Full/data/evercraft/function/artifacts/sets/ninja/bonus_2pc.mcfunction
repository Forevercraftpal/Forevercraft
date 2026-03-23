# Ninja 2-Piece Bonus: Shadow Cloak — Speed II
execute unless entity @s[tag=ninja_2pc] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ninja 2pc: ",color:"dark_gray"},{text:"Shadow Cloak — Speed II",color:"gray"}]
tag @s add ninja_2pc
execute unless score @s ec.h_speed matches 2.. run effect give @s speed 3 1 false
