# Ender Dragon - Remove 2pc bonus
tag @s remove ender_dragon_2pc
effect clear @s resistance
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ender Dragon 2pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=ed_tank_2pc] run attribute @s max_health modifier remove evercraft:ed_tank_2pc_hp
tag @s remove ed_tank_2pc
execute if entity @s[tag=ed_knight_2pc] run attribute @s attack_damage modifier remove evercraft:ed_knight_2pc_dmg
tag @s remove ed_knight_2pc
