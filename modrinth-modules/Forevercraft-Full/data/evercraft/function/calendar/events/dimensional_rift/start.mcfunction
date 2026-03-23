# Dimensional Rift — START (10 minutes)
# Reality tears open, spawning End/Nether mobs in the overworld

# Set calendar state
scoreboard players set #cal_active ec.var 1
scoreboard players set #cal_event_id ec.var 6
function evercraft:briefing/log_event {msg:"Dimensional Rift opened!"}

# Set timer (600 seconds = 10 minutes, decremented 1/s in tick)
scoreboard players set #cal_rift_timer ec.var 600
scoreboard players set #cal_rift_fx ec.var 0

# Track total rift occurrences (for Rift Echo spontaneous trigger)
scoreboard players add #cal_rift_count ec.var 1

# Track for achievements
scoreboard players set @a ach.cal_rift 1
scoreboard players set @a ach.rift_kills_event 0

# Apply Dream Rate modifier
execute as @a run attribute @s luck modifier remove ec_cal_rift
execute as @a run attribute @s luck modifier add ec_cal_rift 1.0 add_value

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"DIMENSIONAL RIFT",color:"dark_purple",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"Reality fractures! Otherworldly creatures pour through!",color:"light_purple",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_purple"},{text:"Dangerous rift mobs spawn nearby",color:"light_purple"}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_purple"},{text:"Kill them for guaranteed crate drops",color:"light_purple"}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_purple"},{text:"Dream Rate +1.0",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 10 minutes",color:"gray"}]
tellraw @a ""

# Dramatic sounds
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.4 0.3
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.6 0.5
execute as @a at @s run playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 0.5 0.5

# Title
title @a times 10 80 30
title @a title [{text:"Dimensional Rift",color:"dark_purple"}]
title @a subtitle [{text:"10 minutes — Survive and reap the rewards!",color:"light_purple",italic:true}]
