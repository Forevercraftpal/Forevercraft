# The Dreaming — STOP
# One-time event — no cooldown needed (never repeats)

# Clear world event state
scoreboard players set #we_active ec.var 0
scoreboard players set #we_event_id ec.var 0

# Clear tier lock flag
scoreboard players set #we_dreaming_lock ec.var 0

# Remove modifier from all players
execute as @a run attribute @s luck modifier remove ec_we_dreaming
execute as @a run attribute @s luck modifier remove ec_we_omen_bonus

# Announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The Dreaming fades... but the memory lingers.",color:"light_purple",italic:true}]
tellraw @a [{text:"  "},{text:"The world has been forever touched by dreams.",color:"gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.0
execute as @a at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.6 1.5

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"The Dreaming Has Faded",color:"light_purple"}
