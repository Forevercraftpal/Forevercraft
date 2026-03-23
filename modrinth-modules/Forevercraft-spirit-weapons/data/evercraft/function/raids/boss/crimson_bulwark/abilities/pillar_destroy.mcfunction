# The Crimson Bulwark — Pillar Destroyed
# Called as the pillar entity at its position

particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0.3 5
particle minecraft:dust{color:[0.5,0.5,0.5],scale:2.0} ~ ~1 ~ 1 1 1 0 20
playsound minecraft:block.stone.break master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.4

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"A pillar crumbles! Cover lost!",color:"gray"}]

kill @s
