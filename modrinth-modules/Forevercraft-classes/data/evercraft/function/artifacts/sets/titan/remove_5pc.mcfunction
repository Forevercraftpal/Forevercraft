# Tempest - Remove 5pc bonus
tag @s remove titan_5pc
# Downgrade back to Conduit Power only if still 2pc
execute if entity @s[tag=titan_2pc] run effect give @s conduit_power 3 0 false
execute unless entity @s[tag=titan_2pc] run effect clear @s speed
effect clear @s resistance
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Tempest 5pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=ttn_jav_5pc] run attribute @s attack_damage modifier remove evercraft:ttn_jav_5pc_dmg
tag @s remove ttn_jav_5pc
