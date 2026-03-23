# Rift Echo — START (15 minutes)
# Echoes of past rifts coalesce — upgraded rift with a boss mob

# Set world event state
scoreboard players set #we_active ec.var 1
scoreboard players set #we_event_id ec.var 5
scoreboard players set #we_timer ec.var 900
scoreboard players set #we_fx ec.var 0
scoreboard players set #we_rift_spawn_fx ec.var 0
scoreboard players set #we_boss_dead ec.var 0

# Apply Dream Rate modifier (+2.0 global)
execute as @a run attribute @s luck modifier remove ec_we_rift_echo
execute as @a run attribute @s luck modifier add ec_we_rift_echo 2.0 add_value

# Track for achievements
scoreboard players set @a ach.we_rift_echo 1
scoreboard players set @a ach.rift_kills_event 0

# Omens + World Events: Bad Omen doubles event DR boost
tag @a[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] add ec.we_omen
execute as @a[tag=ec.we_omen] run attribute @s luck modifier add ec_we_omen_bonus 2.0 add_value
execute as @a[tag=ec.we_omen] run effect clear @s minecraft:bad_omen
execute as @a[tag=ec.we_omen] run tellraw @s [{text:"  ",color:"dark_red"},{text:"Your Bad Omen amplifies the event! ",color:"red"},{text:"(+2.0 bonus DR)",color:"gold"}]
tag @a remove ec.we_omen

# Server-wide announcement
tellraw @a ""
tellraw @a [{text:"  "},{text:"RIFT ECHO",color:"dark_purple",bold:true}]
tellraw @a ""
tellraw @a [{text:"  "},{text:"The echoes of past rifts coalesce!",color:"light_purple",italic:true}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_purple"},{text:"A powerful Rift Warden has emerged",color:"light_purple"}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_purple"},{text:"Enhanced rift mobs spawn periodically",color:"light_purple"}]
tellraw @a [{text:"  "},{text:"  + ",color:"dark_purple"},{text:"Dream Rate +2.0",color:"green"}]
tellraw @a [{text:"  "},{text:"  Duration: 15 minutes",color:"gray"}]
tellraw @a ""

# Dramatic sounds
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 0.3
execute as @a at @s run playsound minecraft:entity.warden.emerge master @s ~ ~ ~ 0.6 0.5
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.5 0.3

# Title
title @a times 10 100 30
title @a title [{text:"Rift Echo",color:"dark_purple"}]
title @a subtitle [{text:"A Rift Warden emerges from the void!",color:"light_purple",italic:true}]

# Spawn the Rift Warden boss near a random player
execute as @a[sort=random,limit=1,gamemode=!spectator] at @s run function evercraft:world_events/rift_echo/spawn_boss

# Override tick to 1s for active event
schedule function evercraft:world_events/tick 1s
