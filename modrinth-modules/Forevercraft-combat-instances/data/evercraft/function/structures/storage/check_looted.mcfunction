# Check if this player has already looted this chest position
# Uses storage with player name + position as key

# Store current check data
execute store result storage evercraft:structures/check x int 1 run scoreboard players get @s cf.pos_x
execute store result storage evercraft:structures/check y int 1 run scoreboard players get @s cf.pos_y
execute store result storage evercraft:structures/check z int 1 run scoreboard players get @s cf.pos_z
execute store result storage evercraft:structures/check tier int 1 run scoreboard players get @s cf.tier

# Set flag to spawn (will be unset if already looted)
scoreboard players set #spawn_loot cf.temp 1

# Check each stored position for this player against current position
# This is done via the verify function which iterates stored positions
data modify storage evercraft:structures/check player set from entity @s UUID

# Run spawn - it will handle the loot table selection and duplicate checking
function evercraft:structures/container/spawn_loot
