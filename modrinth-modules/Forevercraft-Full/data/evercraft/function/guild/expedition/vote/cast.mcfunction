# Guild Expedition — Cast Vote
# @s = player with ec.gexp_vote 1..3

# Must be in a guild
execute unless score @s ec.guild_id matches 1.. run return 0

# Prevent double voting
execute if entity @s[tag=ec.gexp_voted] run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You already voted!",color:"red"}]

# Find guild marker and validate voting state
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] unless data entity @s data.expedition{state:1} run return run tellraw @s [{text:"[Guild] ",color:"green"},{text:"No expedition vote is active.",color:"red"}]

# Store vote choice for macro
execute store result storage evercraft:expedition temp.vote_choice int 1 run scoreboard players get @s ec.gexp_vote

# Tag to prevent double voting
tag @s add ec.gexp_voted

# Increment vote count on marker
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/expedition/vote/apply_vote

tellraw @s [{text:"[Guild] ",color:"green"},{text:"Vote cast!",color:"green"}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
