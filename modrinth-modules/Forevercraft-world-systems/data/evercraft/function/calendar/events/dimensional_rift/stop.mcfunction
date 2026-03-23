# Dimensional Rift — STOP

# Clear calendar state
scoreboard players set #cal_active ec.var 0
scoreboard players set #cal_event_id ec.var 0
scoreboard players set #cal_rift_timer ec.var 0
scoreboard players set #cal_rest_days ec.var 4

# Remove modifier
execute as @a run attribute @s luck modifier remove ec_cal_rift

# Kill all rift mobs
kill @e[tag=RIFT.Mob]

# Announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The dimensional rift seals shut...",color:"gray",italic:true}]
tellraw @a [{text:"  "},{text:"Reality stabilizes once more.",color:"gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.0
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 2.0

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Dimensional Rift Ended",color:"gray"}
