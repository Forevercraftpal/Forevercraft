# Blood Moon — STOP

# Clear calendar state
scoreboard players set #cal_active ec.var 0
scoreboard players set #cal_event_id ec.var 0
scoreboard players set #cal_blood_moon ec.var 0
scoreboard players set #cal_rest_days ec.var 4

# Remove modifier
execute as @a run attribute @s luck modifier remove ec_cal_blood

# Announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The Blood Moon fades with the dawn...",color:"gray",italic:true}]
tellraw @a [{text:"  "},{text:"Peace returns to the realm.",color:"gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.0
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Blood Moon Ended",color:"gray"}
