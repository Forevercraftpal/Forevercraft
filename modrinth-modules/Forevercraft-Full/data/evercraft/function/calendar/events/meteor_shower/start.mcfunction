# Meteor Shower — START (1 night event)
# Rare ore rains from the sky, collected before dawn

# Set calendar state
scoreboard players set #cal_active ec.var 1
scoreboard players set #cal_event_id ec.var 5
function evercraft:briefing/log_event {msg:"Meteor Shower appeared!"}

# Apply Dream Rate modifier
execute as @a run attribute @s luck modifier remove ec_cal_meteor
execute as @a run attribute @s luck modifier add ec_cal_meteor 0.5 add_value

# Track for achievements
scoreboard players set @a ach.cal_meteor 1
scoreboard players set @a ach.meteor_ores_event 0

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"METEOR SHOWER",color:"gold",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"Shooting stars streak across the sky!",color:"yellow",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"gold"},{text:"Rare ore rains from the heavens",color:"yellow"}]
tellraw @a [{text:"  "},{text:"  + ",color:"gold"},{text:"Collect before dawn!",color:"yellow"}]
tellraw @a [{text:"  "},{text:"  + ",color:"gold"},{text:"Dream Rate +0.5",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 1 night",color:"gray"}]
tellraw @a ""

# Dramatic sounds
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 0.5 0.5
execute as @a at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.8 1.2
execute as @a at @s run playsound minecraft:entity.allay.ambient_with_item master @s ~ ~ ~ 0.5 0.5

# Title
title @a times 10 80 30
title @a title [{text:"Meteor Shower",color:"gold"}]
title @a subtitle [{text:"Rare ore falls from the sky!",color:"yellow",italic:true}]
