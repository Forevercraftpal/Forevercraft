# Rift Echo — STOP

# Clear world event state
scoreboard players set #we_active ec.var 0
scoreboard players set #we_event_id ec.var 0

# Set cooldown (100 hours = 7,200,000 ticks from now)
execute store result score #we_rift_echo_cd ec.var run time query gametime
scoreboard players add #we_rift_echo_cd ec.var 7200000

# Remove modifier from all players
execute as @a run attribute @s luck modifier remove ec_we_rift_echo
execute as @a run attribute @s luck modifier remove ec_we_omen_bonus

# Kill all rift mobs (including boss if still alive)
kill @e[tag=RIFT.Mob]

# Announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The rift echo dissipates... reality heals.",color:"gray",italic:true}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.0
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.3 2.0

# Title display
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Rift Echo Ended",color:"gray"}
