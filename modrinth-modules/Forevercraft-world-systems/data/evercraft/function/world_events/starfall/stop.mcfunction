# Starfall Convergence — STOP

# Clear world event state
scoreboard players set #we_active ec.var 0
scoreboard players set #we_event_id ec.var 0

# Set cooldown (50 hours = 3,600,000 ticks from now)
execute store result score #we_starfall_cd ec.var run time query gametime
scoreboard players add #we_starfall_cd ec.var 3600000

# Remove modifier
execute as @a run attribute @s luck modifier remove ec_we_starfall
execute as @a run attribute @s luck modifier remove ec_we_omen_bonus

# Announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The starfall fades as dawn approaches...",color:"gray",italic:true}]
tellraw @a [{text:"  "},{text:"The stars return to their places.",color:"gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.0

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Starfall Convergence Ended",color:"gray"}
