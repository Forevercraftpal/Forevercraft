# Hero's Eternal - Remove 2pc bonus
tag @s remove hero_2pc
effect clear @s speed
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Eternal 2pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=hero_dancer_2pc] run attribute @s attack_damage modifier remove evercraft:hero_dancer_2pc_dmg
tag @s remove hero_dancer_2pc
