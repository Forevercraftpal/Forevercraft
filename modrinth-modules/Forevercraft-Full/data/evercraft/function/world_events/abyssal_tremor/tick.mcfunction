# Abyssal Tremor — Tick (1s)
# Timer countdown, darkness pulse, debris spawn, heartbeat

# Decrement timer
scoreboard players remove #we_timer ec.var 1

# Sync DR modifier for deep players (recalculate as players move up/down)
execute as @a run attribute @s luck modifier remove ec_we_abyssal
execute as @a[y=-64,dy=64] run attribute @s luck modifier add ec_we_abyssal 1.5 add_value

# FX counter (5-second cycle for darkness pulse)
scoreboard players add #we_fx ec.var 1
execute if score #we_fx ec.var matches 5.. run scoreboard players set #we_fx ec.var 0

# Darkness pulse: 2s on / 3s off (apply at count 0, lasts 2s, off for counts 2-4)
execute if score #we_fx ec.var matches 0 as @a[y=-64,dy=64] at @s run effect give @s darkness 2 0 true

# Heartbeat counter (10-second cycle)
scoreboard players add #we_hb_fx ec.var 1
execute if score #we_hb_fx ec.var matches 10.. run scoreboard players set #we_hb_fx ec.var 0
execute if score #we_hb_fx ec.var matches 0 as @a[y=-64,dy=64] at @s run playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 0.6 0.8

# Debris spawn counter (15-second cycle)
scoreboard players add #we_debris_fx ec.var 1
execute if score #we_debris_fx ec.var matches 15.. run scoreboard players set #we_debris_fx ec.var 0
execute if score #we_debris_fx ec.var matches 0 as @a[y=-64,dy=64,gamemode=!spectator] at @s run function evercraft:world_events/abyssal_tremor/spawn_debris

# Sculk particles for deep players
execute as @a[y=-64,dy=64] at @s run particle minecraft:sculk_charge_pop ~ ~1 ~ 3 1 3 0.05 3

# Warnings
execute if score #we_timer ec.var matches 60 run tellraw @a [{text:"  "},{text:"[Tremor] ",color:"dark_gray"},{text:"1 minute remaining...",color:"gray"}]
execute if score #we_timer ec.var matches 10 run tellraw @a [{text:"  "},{text:"[Tremor] ",color:"dark_gray"},{text:"The trembling subsides...",color:"gray"}]

# Timer expired: stop event
execute if score #we_timer ec.var matches ..0 run function evercraft:world_events/abyssal_tremor/stop
