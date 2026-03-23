# Guidestone — Register a Guidestone (auto-register on placement)
# Run as: the marker entity at the lodestone position
# The placing player is @p (nearest)

# Tag the nearest player as registrant
tag @a[distance=..5,limit=1,sort=nearest] add ec.gs_registrant

# Assign an ID from next_id counter
execute store result score @s ec.gs_id run data get storage evercraft:guidestone next_id

# Increment the global counter (add 1 to the score, but id is the ORIGINAL value)
execute store result storage evercraft:guidestone next_id int 1 run scoreboard players add @s ec.gs_id 1
scoreboard players remove @s ec.gs_id 1

# Build registry entry in temp storage
execute store result storage evercraft:guidestone temp.id int 1 run scoreboard players get @s ec.gs_id
execute store result storage evercraft:guidestone temp.x int 1 run data get entity @s Pos[0]
execute store result storage evercraft:guidestone temp.y int 1 run data get entity @s Pos[1]
execute store result storage evercraft:guidestone temp.z int 1 run data get entity @s Pos[2]

# Dimension detection — use execute if dimension (Dimension NBT is not accessible)
data modify storage evercraft:guidestone temp.dim set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage evercraft:guidestone temp.dim set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage evercraft:guidestone temp.dim set value "minecraft:the_end"

# Default name and owner
execute as @a[tag=ec.gs_registrant,limit=1] run data modify storage evercraft:guidestone temp.owner set value "Unknown"
execute as @a[tag=ec.gs_registrant,limit=1] run data modify storage evercraft:guidestone temp.name set value "Unnamed Waypoint"

# Store the owner's UUID for player head display in menu (as int array)
execute as @a[tag=ec.gs_registrant,limit=1] run data modify storage evercraft:guidestone temp.owner_uuid set from entity @s UUID
# Also store individual UUID ints for macro use in text components
execute as @a[tag=ec.gs_registrant,limit=1] store result storage evercraft:guidestone temp.uuid0 int 1 run data get entity @s UUID[0]
execute as @a[tag=ec.gs_registrant,limit=1] store result storage evercraft:guidestone temp.uuid1 int 1 run data get entity @s UUID[1]
execute as @a[tag=ec.gs_registrant,limit=1] store result storage evercraft:guidestone temp.uuid2 int 1 run data get entity @s UUID[2]
execute as @a[tag=ec.gs_registrant,limit=1] store result storage evercraft:guidestone temp.uuid3 int 1 run data get entity @s UUID[3]

# Initialize primed state (default: not primed)
data modify storage evercraft:guidestone temp.primed set value 0b

# Count existing registry entries + 1 for display numbering (not the unique ID)
execute store result score #gs_count ec.gs_temp run data get storage evercraft:guidestone registry
scoreboard players add #gs_count ec.gs_temp 1
execute store result storage evercraft:guidestone temp.display_num int 1 run scoreboard players get #gs_count ec.gs_temp

# Determine the name (custom anvil name > "Waypoint #N" default)
execute as @a[tag=ec.gs_registrant,limit=1] run function evercraft:guidestone/store_name

# Append to the registry
data modify storage evercraft:guidestone registry append from storage evercraft:guidestone temp

# Show the registered name in feedback
function evercraft:guidestone/register_feedback with storage evercraft:guidestone temp

# Cleanup
tag @a remove ec.gs_registrant
