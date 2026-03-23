# Guild Event — Weekly Contribution: End of Period
# Triggered every 7 MC days. Ranks contributors and rewards top player.

# Update tracking day
scoreboard players operation #ge_weekly_day ec.var = #visual_day ec.var

# Announce
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"The weekly contribution period has ended! ",color:"gold"},{text:"Calculating results...",color:"yellow"}]
tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"[Click to Teleport to Guildstone]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.ge_event_tp set 1"},hover_event:{action:"show_text",value:{text:"Teleport to your guild zone!",color:"green"}}}]

# Find top contributor among online guilded players
# Calculate delta: current contrib - snapshot
scoreboard players set #ge_top_score ec.temp 0
scoreboard players set #ge_top_found ec.temp 0
tag @a remove ge.top_contributor

execute as @a[scores={ec.guild_id=1..}] run function evercraft:guild/events/weekly/calc_delta

# Reward the top contributor if found
execute if score #ge_top_found ec.temp matches 1 as @a[tag=ge.top_contributor,limit=1] run function evercraft:guild/events/weekly/reward_top

# If no one contributed this period
execute if score #ge_top_found ec.temp matches 0 run tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"No contributions were made this period.",color:"gray"}]

# Snapshot current contribution for next period (all guilded players)
execute as @a[scores={ec.guild_id=1..}] run scoreboard players operation @s ec.ge_weekly_contrib = @s ec.guild_contrib
