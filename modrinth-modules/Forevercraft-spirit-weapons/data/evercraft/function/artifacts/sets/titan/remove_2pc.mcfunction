# Tempest - Remove 2pc bonus
tag @s remove titan_2pc
effect clear @s conduit_power
attribute @s luck modifier remove titan_2pc_luck
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Tempest 2pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=ttn_jav_2pc] run attribute @s attack_damage modifier remove evercraft:ttn_jav_2pc_dmg
tag @s remove ttn_jav_2pc
execute if entity @s[tag=ttn_hop_2pc] run attribute @s max_health modifier remove evercraft:ttn_hop_2pc_hp
tag @s remove ttn_hop_2pc
