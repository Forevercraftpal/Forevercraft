# Dragonmaster - Remove 2pc bonus
tag @s remove dragonmaster_2pc
effect clear @s strength
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Dragonmaster 2pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=dm_berserk_2pc] run attribute @s attack_damage modifier remove evercraft:dm_berserk_2pc_dmg
tag @s remove dm_berserk_2pc
