# Guild GUI — Open guidestone teleport menu from guild stone
# @s = player, at @s position (near guild stone)
# Sets guild context flags so the guidestone menu knows this is a guild stone

# Must be near a guild stone marker
execute unless entity @e[type=marker,tag=ec.guildstone,tag=ec.gs_registered,distance=..8,limit=1] run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You must be near your Guild Stone to teleport!",color:"red"}]
execute unless entity @e[type=marker,tag=ec.guildstone,tag=ec.gs_registered,distance=..8,limit=1] run return 0

# Set guild stone context for the guidestone menu
data modify storage evercraft:guidestone menu_ctx.is_guild_stone set value 1b
execute store result storage evercraft:guidestone menu_ctx.guild_id int 1 run scoreboard players get @s ec.guild_id

# Open the standard guidestone menu (it will detect ec.gs_registered marker nearby)
function evercraft:guidestone/menu/open
