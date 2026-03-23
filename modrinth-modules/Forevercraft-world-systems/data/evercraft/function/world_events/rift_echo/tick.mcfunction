# Rift Echo — Tick (1s)
# Timer countdown, periodic rift mob spawns, portal particles, boss tracking

# Decrement timer
scoreboard players remove #we_timer ec.var 1

# Sync DR modifier for new joiners only (OPT: was remove+add for ALL players every 1s)
execute as @a[tag=!ec.joined] run attribute @s luck modifier remove ec_we_rift_echo
execute as @a[tag=!ec.joined] run attribute @s luck modifier add ec_we_rift_echo 2.0 add_value

# Portal particles around players (more intense than regular rift)
execute as @a at @s run particle minecraft:portal ~ ~1 ~ 4 1 4 0.8 15
execute as @a at @s run particle minecraft:reverse_portal ~ ~2 ~ 6 3 6 0.5 10

# Rift mob spawn counter (10-second cycle — less frequent than regular rift, focus on boss)
scoreboard players add #we_rift_spawn_fx ec.var 1
execute if score #we_rift_spawn_fx ec.var matches 10.. run scoreboard players set #we_rift_spawn_fx ec.var 0

# Every 10 seconds: spawn rift mobs near each player (40% chance per player, reusing Dimensional Rift spawner)
execute if score #we_rift_spawn_fx ec.var matches 0 as @a[gamemode=!spectator] at @s run function evercraft:calendar/events/dimensional_rift/spawn_rift_mob

# Every 1 second: re-anger boss at nearest player (prevents dig-down if it calmed)
execute if score #we_boss_dead ec.var matches 0 as @e[tag=RIFT.Boss] at @s run damage @s 0.01 minecraft:player_attack by @a[sort=nearest,limit=1,gamemode=!spectator]

# FX counter for ambient effects
scoreboard players add #we_fx ec.var 1
execute if score #we_fx ec.var matches 5.. run scoreboard players set #we_fx ec.var 0

# Boss tracking — detect and announce death once (0=alive, 1=dead+announce, 2=announced)
execute if score #we_fx ec.var matches 0 if score #we_boss_dead ec.var matches 0 unless entity @e[tag=RIFT.Boss] run scoreboard players set #we_boss_dead ec.var 1
execute if score #we_boss_dead ec.var matches 1 run tellraw @a [{text:"  "},{text:"[Rift Echo] ",color:"dark_purple"},{text:"The Rift Warden has been defeated!",color:"gold",bold:true}]
execute if score #we_boss_dead ec.var matches 1 run scoreboard players set #we_timer ec.var 60
execute if score #we_boss_dead ec.var matches 1 as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1.0
execute if score #we_boss_dead ec.var matches 1 run scoreboard players set #we_boss_dead ec.var 2

# Warnings
execute if score #we_timer ec.var matches 120 run tellraw @a [{text:"  "},{text:"[Rift Echo] ",color:"dark_purple"},{text:"2 minutes remaining...",color:"light_purple"}]
execute if score #we_timer ec.var matches 30 run tellraw @a [{text:"  "},{text:"[Rift Echo] ",color:"dark_purple"},{text:"30 seconds remaining!",color:"light_purple"}]
execute if score #we_timer ec.var matches 10 run tellraw @a [{text:"  "},{text:"[Rift Echo] ",color:"dark_purple"},{text:"The echo fades...",color:"red",bold:true}]

# Timer expired: stop event
execute if score #we_timer ec.var matches ..0 run function evercraft:world_events/rift_echo/stop
