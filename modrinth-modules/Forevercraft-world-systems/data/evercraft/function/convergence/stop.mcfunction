# Harmonic Convergence — STOP
# Clean up overlay, remove buffs, set cooldown

# Clear state
scoreboard players set #conv_active ec.var 0
scoreboard players set #conv_flag ec.var 0
scoreboard players set #conv_id ec.var 0
scoreboard players set #conv_fx ec.var 0

# Set cooldown (1 real hour = 72000 gametime ticks)
execute store result score #conv_cooldown_cd ec.var run time query gametime
scoreboard players add #conv_cooldown_cd ec.var 72000

# Remove DR modifier
execute as @a run attribute @s luck modifier remove ec_convergence

# Despawn all convergence lore sparkles
kill @e[type=marker,tag=ec.conv_sparkle]
kill @e[type=interaction,tag=ec.conv_sparkle]

# Farewell announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"The Convergence fades, its power returning to the cosmos...",color:"gray",italic:true}]
tellraw @a [{text:"  "},{text:"The world settles back to its rhythm.",color:"dark_gray"}]
tellraw @a ""

# Sound
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.2
execute as @a at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.4 0.5

# Title
title @a times 10 40 20
title @a title {text:" "}
title @a subtitle {text:"Harmonic Convergence Ended",color:"gray"}
