# Dream Surge Event — TICK
# Called every game tick from main tick.mcfunction when event is active
# Handles timer countdown, new player modifier application, and warnings

# Decrement timer
scoreboard players remove #ec_event_timer ec.var 1

# Apply modifier to new joiners (every 20 ticks — add is idempotent, no remove needed)
# OPT: Removed remove+add churn — modifier add silently succeeds if already present
scoreboard players add #dream_surge_sync ec.var 1
execute if score #dream_surge_sync ec.var matches 20.. run scoreboard players set #dream_surge_sync ec.var 0
execute if score #dream_surge_sync ec.var matches 0 as @a run attribute @s luck modifier add ec_event_dream_surge 25.0 add_value

# 5-minute warning (6000 ticks remaining)
execute if score #ec_event_timer ec.var matches 6000 run tellraw @a [{text:"[Dream Surge] ",color:"light_purple"},{text:"5 minutes remaining!",color:"yellow"}]
execute if score #ec_event_timer ec.var matches 6000 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.8 1.0

# 1-minute warning (1200 ticks remaining)
execute if score #ec_event_timer ec.var matches 1200 run tellraw @a [{text:"[Dream Surge] ",color:"light_purple"},{text:"1 minute remaining!",color:"red"}]
execute if score #ec_event_timer ec.var matches 1200 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.8 0.5

# 10-second warning (200 ticks remaining)
execute if score #ec_event_timer ec.var matches 200 run tellraw @a [{text:"[Dream Surge] ",color:"light_purple"},{text:"10 seconds...",color:"dark_red",bold:true}]
execute if score #ec_event_timer ec.var matches 200 as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1.0 0.3

# Timer expired — end event
execute if score #ec_event_timer ec.var matches ..0 run function evercraft:event/stop
