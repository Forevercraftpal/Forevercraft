# Dream Surge Event — STOP
# Called automatically when timer expires, or manually via /function evercraft:event/stop

# Deactivate event
scoreboard players set #ec_event_active ec.var 0
scoreboard players set #ec_event_timer ec.var 0

# Remove dream surge modifier from all players
execute as @a run attribute @s luck modifier remove ec_event_dream_surge

# Server-wide end announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"✦ DREAM SURGE ENDED ✦",color:"gray",bold:true}]
tellraw @a [{text:"  "},{text:"The realm's dreams return to normal...",color:"gray",italic:true}]
tellraw @a ""

# End sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.8 1.0
execute as @a at @s run playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.5 0.5

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle [{text:"Dream Surge Ended",color:"gray"}]
