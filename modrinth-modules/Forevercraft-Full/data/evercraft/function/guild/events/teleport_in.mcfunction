# Guild Event — Teleport to guildstone
# @s = player who clicked the teleport option

# Must be in a guild
execute unless score @s ec.guild_id matches 1.. run return 0

# Find guild marker and get zone coordinates
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute unless entity @e[type=marker,tag=ec.guild,predicate=evercraft:guild/check_id,limit=1] run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"Could not find your guildstone!",color:"red"}]

# Load zone coords into storage for macro teleport
execute store result storage evercraft:guild_events tp.x int 1 run data get entity @e[type=marker,tag=ec.guild,predicate=evercraft:guild/check_id,limit=1] data.zone.x
execute store result storage evercraft:guild_events tp.y int 1 run data get entity @e[type=marker,tag=ec.guild,predicate=evercraft:guild/check_id,limit=1] data.zone.y
execute store result storage evercraft:guild_events tp.z int 1 run data get entity @e[type=marker,tag=ec.guild,predicate=evercraft:guild/check_id,limit=1] data.zone.z
data modify storage evercraft:guild_events tp.dim set from entity @e[type=marker,tag=ec.guild,predicate=evercraft:guild/check_id,limit=1] data.zone.dim

# Teleport
function evercraft:guild/events/do_teleport with storage evercraft:guild_events tp

# Effects
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 0.5 1.0
particle reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 30
tellraw @s [{text:"[Guild] ",color:"green"},{text:"Teleported to your guildstone!",color:"green"}]
