# Merchant Caravan — STOP

# Clear calendar state
scoreboard players set #cal_active ec.var 0
scoreboard players set #cal_event_id ec.var 0
scoreboard players set #cal_rest_days ec.var 4

# Kill merchant entity
kill @e[type=wandering_trader,tag=CAL.Merchant]

# Announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The Merchant Caravan has departed.",color:"gray",italic:true}]
tellraw @a [{text:"  "},{text:"They'll return soon...",color:"gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:entity.wandering_trader.disappeared master @s ~ ~ ~ 0.5 1.0

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Merchant Caravan Departed",color:"gray"}
