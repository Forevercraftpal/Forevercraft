# Remove Fortune meal buff
attribute @s minecraft:luck modifier remove evercraft:fortune_meal
scoreboard players reset @s ec.ck_fortune
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Your Fortune meal buff has worn off.",color:"gray"}]
