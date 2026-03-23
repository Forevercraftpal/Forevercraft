# Merchant Caravan — START (2-day event)
# Special traveling merchant with exclusive goods

# Set calendar state
scoreboard players set #cal_active ec.var 1
scoreboard players set #cal_event_id ec.var 3
scoreboard players set #cal_event_days ec.var 2
function evercraft:briefing/log_event {msg:"Merchant Caravan arrived!"}

# Summon merchant near a random player
execute as @r at @s run function evercraft:calendar/events/merchant_caravan/spawn_merchant

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"MERCHANT CARAVAN",color:"aqua",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"A traveling merchant has arrived!",color:"aqua",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"aqua"},{text:"Exclusive goods for sale",color:"white"}]
tellraw @a [{text:"  "},{text:"  + ",color:"aqua"},{text:"Find the merchant nearby",color:"white"}]
tellraw @a [{text:"  "},{text:"  Duration: 2 days",color:"gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:entity.wandering_trader.ambient master @s ~ ~ ~ 0.8 1.0
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.2

# Title
title @a times 10 60 20
title @a title {text:" "}
title @a subtitle [{text:"Merchant Caravan",color:"aqua",bold:true}]
