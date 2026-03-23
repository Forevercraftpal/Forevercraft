# Fishing Derby — START (1-day event)
# Competitive fishing scoring, prizes for top angler

# Set calendar state
scoreboard players set #cal_active ec.var 1
scoreboard players set #cal_event_id ec.var 4
scoreboard players set #cal_event_days ec.var 1
function evercraft:briefing/log_event {msg:"Fishing Derby started!"}

# Reset all derby scores
scoreboard players set @a cal.derby_score 0

# Apply fishing luck modifier (+0.5 DR)
execute as @a run attribute @s luck modifier remove ec_cal_derby
execute as @a run attribute @s luck modifier add ec_cal_derby 0.5 add_value

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"FISHING DERBY",color:"blue",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"The daily fishing competition begins!",color:"aqua",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"blue"},{text:"Catch as many fish as you can",color:"white"}]
tellraw @a [{text:"  "},{text:"  + ",color:"blue"},{text:"Dream Rate +0.5 while fishing",color:"green"}]
tellraw @a [{text:"  "},{text:"  + ",color:"blue"},{text:"Top angler wins an artifact!",color:"gold"}]
tellraw @a [{text:"  "},{text:"  + ",color:"blue"},{text:"1.5x Fishing Crate chance",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 1 day",color:"gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:entity.fishing_bobber.splash master @s ~ ~ ~ 0.8 1.0
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.5

# Title
title @a times 10 60 20
title @a title {text:" "}
title @a subtitle [{text:"Fishing Derby",color:"blue",bold:true}]
