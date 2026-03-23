# Guild Event — Daily Noon Gathering: Start
# Lasts 3 minutes (3600 ticks). Players near guildstone for 50%+ get rewards.

# Activate
scoreboard players set #ge_noon_active ec.var 1
scoreboard players set #ge_noon_timer ec.var 3600
scoreboard players operation #ge_last_noon_day ec.var = #visual_day ec.var

# Reset presence tracking for all guilded players
scoreboard players set @a[scores={ec.guild_id=1..}] ec.ge_noon_ticks 0

# Announce to all guilded players
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"☀ The daily guild gathering has begun! ",color:"gold"},{text:"Be near your guildstone for 90 seconds to earn rewards.",color:"yellow"}]
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"Rewards: ",color:"gray"},{text:"7 Levels XP",color:"green"},{text:" + ",color:"gray"},{text:"1 Forever Coin",color:"#E0B0FF"}]

# Sound
execute as @a[scores={ec.guild_id=1..}] at @s run playsound minecraft:block.bell.use player @s ~ ~ ~ 0.5 1.0
