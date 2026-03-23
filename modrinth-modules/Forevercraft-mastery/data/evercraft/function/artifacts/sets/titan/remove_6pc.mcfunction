# Tempest - Remove 6pc bonus
tag @s remove titan_6pc
# Downgrade: if still 5pc, keep Speed I + 5pc hoplite resistance; if 2pc, keep Conduit Power
execute if entity @s[tag=titan_5pc] run effect give @s speed 3 0 false
execute unless entity @s[tag=titan_5pc] if entity @s[tag=titan_2pc] run effect give @s conduit_power 3 0 false
execute unless entity @s[tag=titan_2pc] run effect clear @s conduit_power
effect clear @s resistance
# Re-apply 5pc hoplite resistance if still 5pc
execute if entity @s[tag=titan_5pc] if items entity @s weapon.offhand shield[custom_data~{tank:1b}] unless score @s ec.h_resist matches 2.. run effect give @s resistance 3 0 false
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Tempest 6pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=ttn_hoplite_6pc] run attribute @s max_health modifier remove evercraft:ttn_hoplite_6pc_hp
tag @s remove ttn_hoplite_6pc
