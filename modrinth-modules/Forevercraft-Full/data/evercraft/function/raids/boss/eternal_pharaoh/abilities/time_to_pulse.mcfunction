# The Eternal Pharaoh — Enter Pulse State (DPS window)
# Boss slowed, players empowered

scoreboard players set #rd_ep_time_state ec.var 1
scoreboard players set #rd_ep_time_timer ec.var 100

# Boss: Slowness III
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run effect clear @s speed
execute as @e[type=husk,tag=ec.rd_boss,limit=1] run effect give @s slowness 6 2 true

# VFX: blue/gold shimmer
execute as @e[type=husk,tag=ec.rd_boss,limit=1] at @s run particle minecraft:end_rod ~ ~1 ~ 2 1 2 0.1 20
playsound minecraft:block.beacon.power_select master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 1.5

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"TIME PULSE! ",color:"aqua",bold:true},{text:"Strike now!",color:"green"}]
