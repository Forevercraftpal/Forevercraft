# Harvest Festival — STOP

# Clear calendar state
scoreboard players set #cal_active ec.var 0
scoreboard players set #cal_event_id ec.var 0
scoreboard players set #cal_rest_days ec.var 4

# Remove Dream Rate modifier
execute as @a run attribute @s luck modifier remove ec_cal_harvest

# Deactivate harvest crate bonus
scoreboard players set @a ec.hf_active 0

# Restore normal crop growth
gamerule minecraft:random_tick_speed 3

# Announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The Harvest Festival has ended.",color:"gray",italic:true}]
tellraw @a [{text:"  "},{text:"The fields return to their normal rhythm.",color:"gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.0

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Harvest Festival Ended",color:"gray"}
