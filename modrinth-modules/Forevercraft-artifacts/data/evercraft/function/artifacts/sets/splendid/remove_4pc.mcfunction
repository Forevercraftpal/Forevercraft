# Remove Splendid 4pc bonus
tag @s remove splendid_4pc
# Remove class attributes
execute if entity @s[tag=spl_rogue_4pc] run attribute @s attack_speed modifier remove evercraft:spl_rogue_4pc_aspd
tag @s remove spl_rogue_4pc
