# Buddy Designation — Confirm (second sneak+click within window)
# @s = player in designation window
# Shows the [Yes] / [No] tellraw prompt

# Clear the designation timer
scoreboard players set @s ec.bd_designating 0

# Determine mob type name for the message
# Store mob type in temp storage for the tellraw
data modify storage evercraft:buddy temp.mob_type set value "animal"

# Check each type and set display name
execute if entity @e[type=minecraft:wolf,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Wolf"
execute if entity @e[type=minecraft:cat,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Cat"
execute if entity @e[type=minecraft:parrot,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Parrot"
execute if entity @e[type=minecraft:horse,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Horse"
execute if entity @e[type=minecraft:donkey,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Donkey"
execute if entity @e[type=minecraft:mule,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Mule"
execute if entity @e[type=minecraft:llama,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Llama"
execute if entity @e[type=minecraft:trader_llama,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Llama"
execute if entity @e[type=minecraft:camel,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Camel"
execute if entity @e[type=minecraft:fox,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Fox"
execute if entity @e[type=minecraft:ocelot,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Ocelot"
execute if entity @e[type=minecraft:happy_ghast,tag=ec.bd_designating_target,distance=..10,limit=1] run data modify storage evercraft:buddy temp.mob_type set value "Happy Ghast"

# Show the confirmation tellraw with mob type
function evercraft:buddy/designate/show_prompt with storage evercraft:buddy temp
