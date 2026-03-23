# Grove - Remove 2pc bonus
tag @s remove verdant_2pc
effect clear @s saturation
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Grove 2pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=vrd_archer_2pc] run attribute @s attack_damage modifier remove evercraft:vrd_archer_2pc_dmg
tag @s remove vrd_archer_2pc
execute if entity @s[tag=vrd_hunter_2pc] run attribute @s attack_speed modifier remove evercraft:vrd_hunter_2pc_aspd
tag @s remove vrd_hunter_2pc
