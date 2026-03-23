# Dragonmaster - Remove 4pc bonus
tag @s remove dragonmaster_4pc
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Dragonmaster 4pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=dm_berserk_4pc] run attribute @s attack_speed modifier remove evercraft:dm_berserk_4pc_aspd
tag @s remove dm_berserk_4pc
execute if entity @s[tag=dm_dancer_4pc] run attribute @s attack_damage modifier remove evercraft:dm_dancer_4pc_dmg
tag @s remove dm_dancer_4pc
