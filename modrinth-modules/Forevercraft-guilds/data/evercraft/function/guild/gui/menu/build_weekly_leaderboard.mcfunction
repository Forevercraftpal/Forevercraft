# Guild Menu — Build weekly contribution leaderboard
# @s = player with menu open
# Calculates top 3 contributors this week and stores to evercraft:guild weekly

# Init top 3 slots
data modify storage evercraft:guild weekly.top1_name set value {text:"---",color:"dark_gray"}
data modify storage evercraft:guild weekly.top2_name set value {text:"---",color:"dark_gray"}
data modify storage evercraft:guild weekly.top3_name set value {text:"---",color:"dark_gray"}
scoreboard players set #wk_top1 ec.temp 0
scoreboard players set #wk_top2 ec.temp 0
scoreboard players set #wk_top3 ec.temp 0

# Calculate days remaining: weekly_day + 7 - visual_day
scoreboard players operation #wk_days_left ec.temp = #ge_weekly_day ec.var
scoreboard players add #wk_days_left ec.temp 7
scoreboard players operation #wk_days_left ec.temp -= #visual_day ec.var
execute if score #wk_days_left ec.temp matches ..-1 run scoreboard players set #wk_days_left ec.temp 0
execute store result storage evercraft:guild weekly.days_left int 1 run scoreboard players get #wk_days_left ec.temp

# Iterate all online guild members (same guild as viewer)
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = #Search ec.guild_id run function evercraft:guild/gui/menu/check_weekly_rank
# Also check offline members stored on guild marker (not possible without them online)
# For now, only online players are ranked

# Store final scores
execute store result storage evercraft:guild weekly.top1_score int 1 run scoreboard players get #wk_top1 ec.temp
execute store result storage evercraft:guild weekly.top2_score int 1 run scoreboard players get #wk_top2 ec.temp
execute store result storage evercraft:guild weekly.top3_score int 1 run scoreboard players get #wk_top3 ec.temp
