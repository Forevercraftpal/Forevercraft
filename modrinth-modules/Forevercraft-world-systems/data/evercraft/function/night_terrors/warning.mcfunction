# Night Terrors — 10-second warning before spawn
# Run as player at player

# Warning effects
title @s actionbar {text:"The dreamless sky stirs... something watches you.",color:"dark_red",italic:true}
playsound minecraft:ambient.cave player @s ~ ~ ~ 0.8 0.5
particle dust{color:[0.3,0.0,0.0],scale:2.0} ~ ~1 ~ 4 2 4 0.1 40

# Set warning timer (10 seconds) and start active tick
tag @s add ec.nt_warned
scoreboard players set @s ec.nt_warn_cd 10

# Start the active tick loop (handles warning countdown + ability ticking)
schedule function evercraft:night_terrors/active_tick 1s
