# Harmonic Convergence — Tick (1s)
# Independent countdown, runs alongside world event tick

# Safety: if not active, don't reschedule
execute unless score #conv_active ec.var matches 1 run return 0

# Decrement timer
scoreboard players remove #conv_timer ec.var 1

# Mid-join DR sync handled by dreams/on_join (ec.joined tag + 1s schedule = !ec.joined never matches)

# Convergence particles — ethereal shimmer on all players
execute as @a at @s run particle minecraft:end_rod ~ ~2 ~ 3 2 3 0.005 3
execute as @a at @s run particle dust{color:[0.7,0.5,1.0],scale:1.0} ~ ~1.5 ~ 2 1 2 0 2

# Spawn convergence lore sparkle every 15 seconds (near a random player)
scoreboard players add #conv_fx ec.var 1
execute if score #conv_fx ec.var matches 15.. run scoreboard players set #conv_fx ec.var 0
execute if score #conv_fx ec.var matches 0 as @a[sort=random,limit=1] at @s run function evercraft:convergence/spawn_lore_sparkle

# === Countdown warnings ===
# 5 minutes remaining
execute if score #conv_timer ec.var matches 300 run tellraw @a [{text:"  [Convergence] ",color:"light_purple"},{text:"5 minutes remaining...",color:"gray"}]
execute if score #conv_timer ec.var matches 300 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.2

# 1 minute remaining
execute if score #conv_timer ec.var matches 60 run tellraw @a [{text:"  [Convergence] ",color:"light_purple"},{text:"1 minute remaining!",color:"gold"}]
execute if score #conv_timer ec.var matches 60 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.6 1.0

# 10 seconds remaining
execute if score #conv_timer ec.var matches 10 run tellraw @a [{text:"  [Convergence] ",color:"light_purple"},{text:"10 seconds...",color:"red"}]
execute if score #conv_timer ec.var matches 10 as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.8 0.8

# End convergence
execute if score #conv_timer ec.var matches ..0 run function evercraft:convergence/stop
execute if score #conv_timer ec.var matches ..0 run return 0

# Reschedule
schedule function evercraft:convergence/tick 1s
