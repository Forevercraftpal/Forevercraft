# Dragonmaster - Remove 5pc bonus
tag @s remove dragonmaster_5pc
# Downgrade back to Strength I if still 2pc
execute if entity @s[tag=dragonmaster_2pc] run effect give @s strength 3 0 false
execute unless entity @s[tag=dragonmaster_2pc] run effect clear @s strength
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Dragonmaster 5pc bonus removed",color:"gray"}]
# Remove class attributes
execute if entity @s[tag=dm_dancer_5pc] run attribute @s attack_speed modifier remove evercraft:dm_dancer_5pc_aspd
tag @s remove dm_dancer_5pc
