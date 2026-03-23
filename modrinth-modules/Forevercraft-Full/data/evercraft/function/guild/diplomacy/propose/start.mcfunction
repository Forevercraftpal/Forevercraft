# Guild Diplomacy — Start proposal (trigger 1-7)
# @s = player who triggered
# 1=alliance, 2=competition, 3=pillage, 6=remove alliance, 7=remove enemy
# ec.gd_vote_tgt already set to target guild ID from dispatch

# Must have a pending target (set during dispatch)
execute unless score @s ec.gd_vote_tgt matches 1.. run return 0

# Store vote type from trigger value
# Map trigger 6→vote_type 4 (remove alliance), trigger 7→vote_type 5 (remove enemy)
execute store result score #gd_prop_type ec.temp run scoreboard players get @s ec.gd_diplo
execute if score #gd_prop_type ec.temp matches 6 run scoreboard players set #gd_prop_type ec.temp 4
execute if score #gd_prop_type ec.temp matches 7 run scoreboard players set #gd_prop_type ec.temp 5

# Block pillage/competition against allied guilds
scoreboard players set #gd_is_allied ec.temp 0
execute store result storage evercraft:guild temp.target_id int 1 run scoreboard players get @s ec.gd_vote_tgt
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute if score @s ec.gd_diplo matches 2..3 positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/diplomacy/check_alliance with storage evercraft:guild temp
execute if score @s ec.gd_diplo matches 2..3 if score #gd_is_allied ec.temp matches 1 run return run tellraw @s [{text:"[Diplomacy] ",color:"dark_purple"},{text:"You cannot start a competition or pillage against an allied guild! Remove the alliance first.",color:"red"}]

# Block remove-alliance if not actually allied
execute if score @s ec.gd_diplo matches 6 positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/diplomacy/check_alliance with storage evercraft:guild temp
execute if score @s ec.gd_diplo matches 6 unless score #gd_is_allied ec.temp matches 1 run return run tellraw @s [{text:"[Diplomacy] ",color:"dark_purple"},{text:"You are not allied with that guild!",color:"red"}]

# Store guild IDs
execute store result storage evercraft:guild temp.guild_a int 1 run scoreboard players get @s ec.guild_id
execute store result storage evercraft:guild temp.guild_b int 1 run scoreboard players get @s ec.gd_vote_tgt
execute store result storage evercraft:guild temp.vote_type int 1 run scoreboard players get #gd_prop_type ec.temp

# Get guild names for announcement
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild temp.guild_a_name set from entity @s data.name
scoreboard players operation #Search ec.guild_id = @s ec.gd_vote_tgt
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild temp.guild_b_name set from entity @s data.name

# Send the proposal to both guilds
function evercraft:guild/diplomacy/propose/send with storage evercraft:guild temp
