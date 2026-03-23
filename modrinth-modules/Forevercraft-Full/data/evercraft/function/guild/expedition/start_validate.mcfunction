# Guild Expedition — Validate and roll biomes
# @s = guild marker, caller context has the initiating player

# Check not already in expedition (state must be 0 or absent)
execute if data entity @s data.expedition{state:1} run return run tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"A vote is already in progress!",color:"red"}]
execute if data entity @s data.expedition{state:2} run return run tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"An expedition is already active!",color:"red"}]

# Check cooldown (gametime-based)
execute store result score #gexp_now ec.temp run time query gametime
execute store result score #gexp_cd ec.temp run data get entity @s data.expedition.cooldown_until
execute if score #gexp_cd ec.temp matches 1.. if score #gexp_now ec.temp < #gexp_cd ec.temp run return run tellraw @a[scores={ec.guild_id=1..}] [{text:"[Guild] ",color:"green"},{text:"Expedition on cooldown. Try again later!",color:"red"}]

# Roll 3 distinct biome IDs (0-24)
execute store result score #gexp_opt1 ec.temp run random value 0..24
execute store result score #gexp_opt2 ec.temp run random value 0..24
# Ensure opt2 != opt1
execute if score #gexp_opt2 ec.temp = #gexp_opt1 ec.temp store result score #gexp_opt2 ec.temp run random value 0..24
execute if score #gexp_opt2 ec.temp = #gexp_opt1 ec.temp store result score #gexp_opt2 ec.temp run random value 0..24
execute if score #gexp_opt2 ec.temp = #gexp_opt1 ec.temp store result score #gexp_opt2 ec.temp run random value 0..24
execute store result score #gexp_opt3 ec.temp run random value 0..24
# Ensure opt3 != opt1 and opt3 != opt2
execute if score #gexp_opt3 ec.temp = #gexp_opt1 ec.temp store result score #gexp_opt3 ec.temp run random value 0..24
execute if score #gexp_opt3 ec.temp = #gexp_opt2 ec.temp store result score #gexp_opt3 ec.temp run random value 0..24
execute if score #gexp_opt3 ec.temp = #gexp_opt1 ec.temp store result score #gexp_opt3 ec.temp run random value 0..24
execute if score #gexp_opt3 ec.temp = #gexp_opt2 ec.temp store result score #gexp_opt3 ec.temp run random value 0..24

# Store options on marker
execute store result entity @s data.expedition.option_1 int 1 run scoreboard players get #gexp_opt1 ec.temp
execute store result entity @s data.expedition.option_2 int 1 run scoreboard players get #gexp_opt2 ec.temp
execute store result entity @s data.expedition.option_3 int 1 run scoreboard players get #gexp_opt3 ec.temp

# Init vote counts
data modify entity @s data.expedition.votes_1 set value 0
data modify entity @s data.expedition.votes_2 set value 0
data modify entity @s data.expedition.votes_3 set value 0

# Set state to VOTING
data modify entity @s data.expedition.state set value 1

# Set vote end time (60 seconds = 1200 ticks)
scoreboard players add #gexp_now ec.temp 1200
execute store result entity @s data.expedition.vote_ends_at int 1 run scoreboard players get #gexp_now ec.temp

# Init progress fields for later
data modify entity @s data.expedition.progress set value 0
data modify entity @s data.expedition.goal set value 500
data modify entity @s data.expedition.target_biome set value -1

# Clear any leftover vote tags
tag @a remove ec.gexp_voted

# Resolve biome names and announce
scoreboard players operation #gexp_biome_id ec.temp = #gexp_opt1 ec.temp
function evercraft:guild/expedition/get_biome_name
data modify storage evercraft:expedition temp.name_1 set from storage evercraft:expedition temp.biome_name
scoreboard players operation #gexp_biome_id ec.temp = #gexp_opt2 ec.temp
function evercraft:guild/expedition/get_biome_name
data modify storage evercraft:expedition temp.name_2 set from storage evercraft:expedition temp.biome_name
scoreboard players operation #gexp_biome_id ec.temp = #gexp_opt3 ec.temp
function evercraft:guild/expedition/get_biome_name
data modify storage evercraft:expedition temp.name_3 set from storage evercraft:expedition temp.biome_name

# Store guild ID for announce macro
execute store result storage evercraft:expedition temp.guild_id int 1 run scoreboard players get #Search ec.guild_id

# Announce vote to guild
function evercraft:guild/expedition/vote/announce with storage evercraft:expedition temp
