# Harvest Festival — START (2-day event)
# +1.5 Dream Rate, 2x crop growth speed, harvest crate bonus

# Set calendar state
scoreboard players set #cal_active ec.var 1
scoreboard players set #cal_event_id ec.var 1
scoreboard players set #cal_event_days ec.var 2

# Apply Dream Rate modifier to all players
execute as @a run attribute @s luck modifier remove ec_cal_harvest
execute as @a run attribute @s luck modifier add ec_cal_harvest 1.5 add_value

# Activate harvest crate bonus (per-player flag for loot table)
scoreboard players set @a ec.hf_active 1
function evercraft:briefing/log_event {msg:"Harvest Festival began!"}

# Double crop growth (random_tick_speed 3 -> 6)
gamerule minecraft:random_tick_speed 6

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"HARVEST FESTIVAL",color:"gold",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"A bountiful season has arrived!",color:"yellow",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"gold"},{text:"Dream Rate +1.5",color:"green"}]
tellraw @a [{text:"  "},{text:"  + ",color:"gold"},{text:"Crops grow twice as fast",color:"green"}]
tellraw @a [{text:"  "},{text:"  + ",color:"gold"},{text:"Harvest crate drop bonus",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 2 days",color:"gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ ~ ~ 0.8 1.2
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.5 1.5

# Title
title @a times 10 60 20
title @a title {text:" "}
title @a subtitle [{text:"Harvest Festival",color:"gold",bold:true}]
