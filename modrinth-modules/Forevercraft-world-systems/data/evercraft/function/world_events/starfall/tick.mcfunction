# Starfall Convergence — Tick (1s)
# Ends at dawn, spawns fallen stars every 30s, sky particles

# Check for dawn — end event
execute if score #visual_time ec.var matches 0..1000 run function evercraft:world_events/starfall/stop
execute if score #visual_time ec.var matches 0..1000 run return 0

# Sync DR modifier for new joiners only (OPT: was remove+add for ALL players every 1s)
execute as @a[tag=!ec.joined] run attribute @s luck modifier remove ec_we_starfall
execute as @a[tag=!ec.joined] run attribute @s luck modifier add ec_we_starfall 2.0 add_value

# Sky particles — constant starfall ambiance
execute as @a at @s run particle minecraft:end_rod ~ ~25 ~ 20 10 20 0.01 8

# FX counter (30-second cycle for star spawn)
scoreboard players add #we_fx ec.var 1

# Every 30 seconds: spawn a fallen star near a random player
execute if score #we_fx ec.var matches 30.. run scoreboard players set #we_fx ec.var 0
execute if score #we_fx ec.var matches 0 run function evercraft:world_events/starfall/spawn_star

# Ambient sound every 15 seconds
execute if score #we_fx ec.var matches 0 as @a at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 1.5
execute if score #we_fx ec.var matches 15 as @a at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.3 0.8
