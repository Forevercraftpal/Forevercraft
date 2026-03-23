# Ender Dragon - Remove 4pc bonus
tag @s remove ender_dragon_4pc
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Ender Dragon 4pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=ed_tank_4pc] run attribute @s knockback_resistance modifier remove evercraft:ed_tank_4pc_kb
tag @s remove ed_tank_4pc
