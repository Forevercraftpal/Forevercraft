# Fishing Derby — STOP

# Clear calendar state
scoreboard players set #cal_active ec.var 0
scoreboard players set #cal_event_id ec.var 0
scoreboard players set #cal_rest_days ec.var 4

# Remove modifier
execute as @a run attribute @s luck modifier remove ec_cal_derby

# Announce results
tellraw @a ""
tellraw @a [{text:"  "},{text:"FISHING DERBY RESULTS",color:"blue",bold:true}]
tellraw @a ""

# Find winner and announce
function evercraft:calendar/events/fishing_derby/leaderboard

tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1.2

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Fishing Derby Ended",color:"gray"}

# Clear all scores (including offline players) to prevent stale data in next derby
scoreboard players reset * cal.derby_score
