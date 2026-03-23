# Hero's Eternal - Remove 4pc bonus
tag @s remove hero_4pc
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Eternal 4pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=hero_dancer_4pc] run attribute @s attack_speed modifier remove evercraft:hero_dancer_4pc_aspd
tag @s remove hero_dancer_4pc
