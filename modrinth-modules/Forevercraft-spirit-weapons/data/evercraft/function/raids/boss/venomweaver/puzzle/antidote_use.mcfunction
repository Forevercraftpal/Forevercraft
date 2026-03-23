# The Venomweaver — Antidote Flower Use
# Called as a perch marker entity when clicked

# Clear interaction data
data remove entity @s interaction

# Check if this perch has charges remaining (not empty)
execute if entity @s[tag=ec.rd_vw_empty] run return 0

# Track charges via tag cycling: no tags = 3 remaining, c1 = 2, c2 = 1, c3 = empty
# Use return to prevent cascade
execute if entity @s[tag=ec.rd_vw_c2] run tag @s add ec.rd_vw_empty
execute if entity @s[tag=ec.rd_vw_c1,tag=!ec.rd_vw_c2] run tag @s add ec.rd_vw_c2
execute if entity @s[tag=!ec.rd_vw_c1] run tag @s add ec.rd_vw_c1

# Give poison immunity to nearest participant (10 seconds)
execute at @s as @a[tag=ec.rd_participant,sort=nearest,limit=1,distance=..5] run effect clear @s poison
execute at @s as @a[tag=ec.rd_participant,sort=nearest,limit=1,distance=..5] run scoreboard players set @s rd.antidote 200

# Announce to the user
execute at @s run tellraw @a[tag=ec.rd_participant,sort=nearest,limit=1,distance=..5] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"Antidote flower consumed! Poison immunity for 10 seconds!",color:"green"}]

# VFX
execute at @s run particle minecraft:happy_villager ~ ~0 ~ 0.5 0.5 0.5 0.1 15
execute at @s run playsound minecraft:entity.generic.eat master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.2
