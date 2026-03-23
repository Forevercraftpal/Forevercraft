# Blood Moon — START (1 night event)
# Enhanced mob spawns, +1.0 Dream Rate, red atmosphere

# Set calendar state
scoreboard players set #cal_active ec.var 1
scoreboard players set #cal_event_id ec.var 2
scoreboard players set #cal_blood_moon ec.var 1
function evercraft:briefing/log_event {msg:"Blood Moon rose!"}

# Apply Dream Rate modifier
execute as @a run attribute @s luck modifier remove ec_cal_blood
execute as @a run attribute @s luck modifier add ec_cal_blood 1.0 add_value

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"BLOOD MOON RISES",color:"dark_red",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"Darkness consumes the sky...",color:"red",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_red"},{text:"Monsters are empowered",color:"red"}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_red"},{text:"Patron spawns accelerated",color:"red"}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_red"},{text:"Dream Rate +1.0",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 1 night",color:"gray"}]
tellraw @a ""

# Dramatic sounds
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.3 0.5
execute as @a at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.8 0.5
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.2 0.3

# Title
title @a times 10 80 30
title @a title [{text:"Blood Moon",color:"dark_red"}]
title @a subtitle [{text:"Survive the night...",color:"red",italic:true}]
