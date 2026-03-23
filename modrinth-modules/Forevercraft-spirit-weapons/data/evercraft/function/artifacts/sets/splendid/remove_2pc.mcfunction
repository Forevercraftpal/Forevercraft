# Remove Splendid 2pc bonus
tag @s remove splendid_2pc
effect clear @s speed
# Remove class attributes
execute if entity @s[tag=spl_rogue_2pc] run attribute @s attack_damage modifier remove evercraft:spl_rogue_2pc_dmg
tag @s remove spl_rogue_2pc
