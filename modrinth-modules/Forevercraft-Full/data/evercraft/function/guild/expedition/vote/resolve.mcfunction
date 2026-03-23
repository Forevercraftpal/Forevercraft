# Guild Expedition — Resolve Vote
# @s = guild marker with state 1

# Read vote counts
execute store result score #gexp_v1 ec.temp run data get entity @s data.expedition.votes_1
execute store result score #gexp_v2 ec.temp run data get entity @s data.expedition.votes_2
execute store result score #gexp_v3 ec.temp run data get entity @s data.expedition.votes_3

# Check if anyone voted at all
scoreboard players operation #gexp_total ec.temp = #gexp_v1 ec.temp
scoreboard players operation #gexp_total ec.temp += #gexp_v2 ec.temp
scoreboard players operation #gexp_total ec.temp += #gexp_v3 ec.temp
execute if score #gexp_total ec.temp matches ..0 run return run function evercraft:guild/expedition/vote/cancel

# Determine winner (highest votes; ties favor lower option number)
# Start assuming option 1 wins
execute store result score #gexp_winner ec.temp run data get entity @s data.expedition.option_1
scoreboard players operation #gexp_best ec.temp = #gexp_v1 ec.temp

# Check if option 2 strictly beats current best
scoreboard players set #gexp_opt2_wins ec.temp 0
execute if score #gexp_v2 ec.temp > #gexp_best ec.temp run scoreboard players set #gexp_opt2_wins ec.temp 1
execute if score #gexp_opt2_wins ec.temp matches 1 run scoreboard players operation #gexp_best ec.temp = #gexp_v2 ec.temp
execute if score #gexp_opt2_wins ec.temp matches 1 store result score #gexp_winner ec.temp run data get entity @s data.expedition.option_2

# Check if option 3 strictly beats current best
execute if score #gexp_v3 ec.temp > #gexp_best ec.temp store result score #gexp_winner ec.temp run data get entity @s data.expedition.option_3

# Set target biome
execute store result entity @s data.expedition.target_biome int 1 run scoreboard players get #gexp_winner ec.temp

# Transition to ACTIVE state
data modify entity @s data.expedition.state set value 2
execute store result score #gexp_now ec.temp run time query gametime
execute store result entity @s data.expedition.started_at int 1 run scoreboard players get #gexp_now ec.temp
# Duration: 72000 ticks (1 in-game day via gametime)
scoreboard players add #gexp_now ec.temp 72000
execute store result entity @s data.expedition.ends_at int 1 run scoreboard players get #gexp_now ec.temp

# Reset progress
data modify entity @s data.expedition.progress set value 0

# Get guild ID for member iteration
execute store result score #Search ec.guild_id run data get entity @s data.id

# Initialize all online guild members' baselines
execute as @a[scores={ec.guild_id=1..}] if score @s ec.guild_id = #Search ec.guild_id run function evercraft:guild/expedition/progress/init_player

# Clean up vote tags
tag @a remove ec.gexp_voted

# Announce expedition start
scoreboard players operation #gexp_biome_id ec.temp = #gexp_winner ec.temp
function evercraft:guild/expedition/get_biome_name
execute store result storage evercraft:expedition temp.guild_id int 1 run scoreboard players get #Search ec.guild_id
function evercraft:guild/expedition/vote/announce_start with storage evercraft:expedition temp

# Show bossbar to guild members
bossbar set evercraft:guild_expedition value 0
bossbar set evercraft:guild_expedition max 500
bossbar set evercraft:guild_expedition visible true
bossbar set evercraft:guild_expedition players @a[scores={ec.guild_id=1..}]
function evercraft:guild/expedition/bossbar/set_name with storage evercraft:expedition temp
