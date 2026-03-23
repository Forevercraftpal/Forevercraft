# ============================================================
# Register Hearthstone in Guidestone Registry
# Run as: the HS.Marker entity, at its position
# Owner data already in storage evercraft:housing temp.*
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

# Set name to "Home" and owner data from housing temp
data modify storage evercraft:guidestone temp.name set value "Home"
data modify storage evercraft:guidestone temp.owner set value "Unknown"
data modify storage evercraft:guidestone temp.owner_uuid set from storage evercraft:housing temp.owner_uuid
data modify storage evercraft:guidestone temp.uuid0 set from storage evercraft:housing temp.uuid0
data modify storage evercraft:guidestone temp.uuid1 set from storage evercraft:housing temp.uuid1
data modify storage evercraft:guidestone temp.uuid2 set from storage evercraft:housing temp.uuid2
data modify storage evercraft:guidestone temp.uuid3 set from storage evercraft:housing temp.uuid3

# Always primed (can teleport cross-dimension to your home)
data modify storage evercraft:guidestone temp.primed set value 1b

# Type identifier for cost logic (guild members teleport free to hearthstones)
data modify storage evercraft:guidestone temp.type set value "hearthstone"

# Display number
execute store result score #gs_count ec.gs_temp run data get storage evercraft:guidestone registry
scoreboard players add #gs_count ec.gs_temp 1
execute store result storage evercraft:guidestone temp.display_num int 1 run scoreboard players get #gs_count ec.gs_temp

# Append to the guidestone registry
data modify storage evercraft:guidestone registry append from storage evercraft:guidestone temp
