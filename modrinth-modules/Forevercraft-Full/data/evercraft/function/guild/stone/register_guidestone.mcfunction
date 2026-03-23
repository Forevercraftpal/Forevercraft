# ============================================================
# Register Guild Stone in Guidestone Registry
# Run as: the ec.guildstone marker entity, at its position
# Guild data available via ec.guild_id scoreboard on marker
# ============================================================

# Assign an ID from guidestone's next_id counter
execute store result score @s ec.gs_id run data get storage evercraft:guidestone next_id

# Increment the global counter (add 1 to the score, but id is the ORIGINAL value)
execute store result storage evercraft:guidestone next_id int 1 run scoreboard players add @s ec.gs_id 1
scoreboard players remove @s ec.gs_id 1

# Build registry entry in guidestone temp storage
execute store result storage evercraft:guidestone temp.id int 1 run scoreboard players get @s ec.gs_id
execute store result storage evercraft:guidestone temp.x int 1 run data get entity @s Pos[0]
execute store result storage evercraft:guidestone temp.y int 1 run data get entity @s Pos[1]
execute store result storage evercraft:guidestone temp.z int 1 run data get entity @s Pos[2]

# Dimension detection
data modify storage evercraft:guidestone temp.dim set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage evercraft:guidestone temp.dim set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage evercraft:guidestone temp.dim set value "minecraft:the_end"

# Guild stone type and guild ID
data modify storage evercraft:guidestone temp.type set value "guild_stone"
execute store result storage evercraft:guidestone temp.guild_id int 1 run scoreboard players get @s ec.guild_id

# Get guild name from guild marker
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 run data modify storage evercraft:guidestone temp.name set from entity @e[type=marker,tag=ec.guild,predicate=evercraft:guild/check_id,limit=1,distance=..2] data.name

# Owner = guild placer (nearest player)
data modify storage evercraft:guidestone temp.owner set value "Guild"
execute store result storage evercraft:guidestone temp.uuid3 int 1 run scoreboard players get @p companion.id

# Always primed (cross-dimensional)
data modify storage evercraft:guidestone temp.primed set value 1b

# Display number
execute store result score #gs_count ec.gs_temp run data get storage evercraft:guidestone registry
scoreboard players add #gs_count ec.gs_temp 1
execute store result storage evercraft:guidestone temp.display_num int 1 run scoreboard players get #gs_count ec.gs_temp

# Append to the guidestone registry
data modify storage evercraft:guidestone registry append from storage evercraft:guidestone temp
