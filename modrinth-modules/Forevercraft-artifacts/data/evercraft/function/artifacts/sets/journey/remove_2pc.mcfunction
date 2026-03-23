# Remove Journey 2pc bonus
tag @s remove journey_2pc
effect clear @s haste
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Journey 2pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=jrn_beast_2pc] run attribute @s attack_damage modifier remove evercraft:jrn_beast_2pc_dmg
tag @s remove jrn_beast_2pc
execute if entity @s[tag=jrn_heal_2pc] run attribute @s max_health modifier remove evercraft:jrn_heal_2pc_hp
tag @s remove jrn_heal_2pc
