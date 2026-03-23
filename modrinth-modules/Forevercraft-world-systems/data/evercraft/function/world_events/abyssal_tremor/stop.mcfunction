# Abyssal Tremor — STOP

# Clear world event state
scoreboard players set #we_active ec.var 0
scoreboard players set #we_event_id ec.var 0

# Set cooldown (25 hours = 1,800,000 ticks from now)
execute store result score #we_abyssal_cd ec.var run time query gametime
scoreboard players add #we_abyssal_cd ec.var 1800000

# Remove modifier from all players
execute as @a run attribute @s luck modifier remove ec_we_abyssal
execute as @a run attribute @s luck modifier remove ec_we_omen_bonus

# Clean up remaining debris (replace with deepslate unless already mined)
execute as @e[type=marker,tag=ABYSS.Ore] at @s if block ~ ~ ~ ancient_debris run setblock ~ ~ ~ deepslate
kill @e[type=marker,tag=ABYSS.Ore]

# Announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The trembling subsides... the deep returns to silence.",color:"gray",italic:true}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.0

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Abyssal Tremor Ended",color:"gray"}
