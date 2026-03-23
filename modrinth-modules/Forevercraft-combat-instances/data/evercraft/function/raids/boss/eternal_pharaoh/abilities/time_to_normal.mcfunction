# The Eternal Pharaoh — Enter Normal State
# Boss empowered, players slowed

scoreboard players set #rd_ep_time_state ec.var 0
scoreboard players set #rd_ep_time_timer ec.var 200

# Boss: Speed III
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run effect clear @s slowness
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run effect give @s speed 12 2 true

# VFX: gold shimmer
execute as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.9,0.7,0.1],scale:2.0} ~ ~1 ~ 2 1 2 0.1 15
playsound minecraft:block.beacon.deactivate master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Time reverts! ",color:"gold",bold:true},{text:"The Pharaoh is empowered!",color:"red"}]
