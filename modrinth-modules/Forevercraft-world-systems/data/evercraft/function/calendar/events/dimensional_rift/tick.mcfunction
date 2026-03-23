# Dimensional Rift — Tick (1s)
# Timer countdown, 5-second mob spawn cycle, portal particles, warnings

# Decrement timer
scoreboard players remove #cal_rift_timer ec.var 1

# Sync Dream Rate modifier for new joiners only (OPT: was remove+add for ALL players every 1s)
execute as @a[tag=!ec.joined] run attribute @s luck modifier remove ec_cal_rift
execute as @a[tag=!ec.joined] run attribute @s luck modifier add ec_cal_rift 1.0 add_value

# Portal particles around players
execute as @a at @s run particle minecraft:portal ~ ~1 ~ 3 1 3 0.5 10
execute as @a at @s run particle minecraft:reverse_portal ~ ~2 ~ 5 2 5 0.3 8

# 5-second spawn counter
scoreboard players add #cal_rift_fx ec.var 1
execute if score #cal_rift_fx ec.var matches 5.. run scoreboard players set #cal_rift_fx ec.var 0

# Every 5 seconds: attempt to spawn rift mobs near each player (40% chance each)
execute if score #cal_rift_fx ec.var matches 0 as @a[gamemode=!spectator] at @s run function evercraft:calendar/events/dimensional_rift/spawn_rift_mob

# Warnings
execute if score #cal_rift_timer ec.var matches 120 run tellraw @a [{text:"  "},{text:"[Forevercraft] ",color:"gold"},{text:"2 minutes remaining...",color:"light_purple"}]
execute if score #cal_rift_timer ec.var matches 30 run tellraw @a [{text:"  "},{text:"[Forevercraft] ",color:"gold"},{text:"30 seconds remaining!",color:"light_purple"}]
execute if score #cal_rift_timer ec.var matches 10 run tellraw @a [{text:"  "},{text:"[Forevercraft] ",color:"gold"},{text:"The rift is closing!",color:"red",bold:true}]

# Timer expired: stop event
execute if score #cal_rift_timer ec.var matches ..0 run function evercraft:calendar/events/dimensional_rift/stop
