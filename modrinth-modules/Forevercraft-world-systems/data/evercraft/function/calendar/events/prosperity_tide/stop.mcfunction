# Prosperity Tide — STOP

# Clear calendar state
scoreboard players set #cal_active ec.var 0
scoreboard players set #cal_event_id ec.var 0
scoreboard players set #cal_rest_days ec.var 4

# Clear prosperity flag
scoreboard players set #cal_prosperity ec.var 0

# Remove modifier + tracking tag
execute as @a run attribute @s luck modifier remove ec_cal_prosperity
tag @a remove ec.cal_prosperity

# Announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The tide of prosperity recedes...",color:"gray",italic:true}]
tellraw @a [{text:"  "},{text:"Normal rates resume.",color:"gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.0
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Prosperity Tide Ended",color:"gray"}
