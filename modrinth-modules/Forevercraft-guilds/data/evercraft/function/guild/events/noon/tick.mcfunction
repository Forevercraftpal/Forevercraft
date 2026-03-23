# Guild Event — Daily Noon Gathering: Tick (called every 1s = 20 ticks)

# Decrement timer
scoreboard players remove #ge_noon_timer ec.var 20

# Add presence ticks for guilded players in guild zone
execute as @a[scores={ec.guild_id=1..,ec.guild_in_zone=1}] run scoreboard players add @s ec.ge_noon_ticks 20

# Timer expired — end event
execute if score #ge_noon_timer ec.var matches ..0 run function evercraft:guild/events/noon/end
execute if score #ge_noon_timer ec.var matches ..0 run return 0

# Halfway announcement (1800 ticks remaining)
execute if score #ge_noon_timer ec.var matches 1781..1800 run tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"90 seconds remain in the guild gathering.",color:"yellow"}]
