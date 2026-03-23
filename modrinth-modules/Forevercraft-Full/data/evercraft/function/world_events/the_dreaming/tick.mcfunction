# The Dreaming — Tick (1s)
# Timer countdown, dreamy particles, modifier sync

# Decrement timer
scoreboard players remove #we_timer ec.var 1

# Sync DR modifier for new joiners only (OPT: was remove+add for ALL players every 1s)
execute as @a[tag=!ec.joined] run attribute @s luck modifier remove ec_we_dreaming
execute as @a[tag=!ec.joined] run attribute @s luck modifier add ec_we_dreaming 10.0 add_value

# Dreamy particles (every 2 seconds)
scoreboard players add #we_fx ec.var 1
execute if score #we_fx ec.var matches 2.. run scoreboard players set #we_fx ec.var 0
execute if score #we_fx ec.var matches 0 as @a at @s run particle minecraft:enchanted_hit ~ ~1 ~ 4 2 4 0.5 15
execute if score #we_fx ec.var matches 0 as @a at @s run particle minecraft:end_rod ~ ~3 ~ 6 3 6 0.02 5

# Ambient dream sound every 25 seconds
execute if score #we_timer ec.var matches 1.. store result score #dream_snd ec.temp run scoreboard players get #we_timer ec.var
execute if score #we_timer ec.var matches 1.. run scoreboard players operation #dream_snd ec.temp %= #25 ec.const
execute if score #dream_snd ec.temp matches 0 as @a at @s run playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.3 0.5

# Warnings
execute if score #we_timer ec.var matches 300 run tellraw @a [{text:"  "},{text:"[Dreaming] ",color:"light_purple"},{text:"5 minutes remaining...",color:"#FF88FF"}]
execute if score #we_timer ec.var matches 60 run tellraw @a [{text:"  "},{text:"[Dreaming] ",color:"light_purple"},{text:"1 minute remaining...",color:"#FF88FF"}]
execute if score #we_timer ec.var matches 10 run tellraw @a [{text:"  "},{text:"[Dreaming] ",color:"light_purple"},{text:"The dream fades...",color:"#FF88FF",italic:true}]

# Timer expired: stop event
execute if score #we_timer ec.var matches ..0 run function evercraft:world_events/the_dreaming/stop
