# Remove Splendid 5pc bonus
tag @s remove splendid_5pc
effect clear @s luck
# Remove class attributes
execute if entity @s[tag=spl_rogue_5pc] run attribute @s attack_damage modifier remove evercraft:spl_rogue_5pc_dmg
tag @s remove spl_rogue_5pc
