# Guild Expedition — Roll daily activity
# Called on day change from events/tick

# Record the day
scoreboard players operation #expedition_day ec.var = #visual_day ec.var

# Pick random activity 1-12, then remap to skip Fountain (6)
# Result: 1-5 stay, 6→7, 7→8, ..., 12→13 (effective range: 1-5, 7-13)
execute store result score #expedition_activity ec.var run random value 1..12
execute if score #expedition_activity ec.var matches 6.. run scoreboard players add #expedition_activity ec.var 1

# Compute multiplier from highest guild level online
# Find max guild level among all guilded players' guilds
scoreboard players set #expedition_mult ec.var 125
execute as @a[scores={ec.guild_id=1..}] run function evercraft:guild/expedition/check_guild_level

# Clamp multiplier 125-500 (×100 scale: 1.25x to 5.00x)
execute if score #expedition_mult ec.var matches ..125 run scoreboard players set #expedition_mult ec.var 125
execute if score #expedition_mult ec.var matches 501.. run scoreboard players set #expedition_mult ec.var 500

# Check for fountain day (every 7th day since start)
scoreboard players set #expedition_fountain ec.var 0
scoreboard players operation #exp_fountain_check ec.temp = #visual_day ec.var
scoreboard players operation #exp_fountain_check ec.temp %= #7 ec.const
execute if score #exp_fountain_check ec.temp matches 0 run scoreboard players set #expedition_fountain ec.var 1

# Announce
function evercraft:guild/expedition/announce

# Apply buffs to all online guilded players
execute as @a[scores={ec.guild_id=1..}] run function evercraft:guild/expedition/apply_buff
