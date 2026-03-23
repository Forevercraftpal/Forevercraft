# Tomb System — Spawn Grave at Death Position
# @s = player who died, positioned at death location (via at @s in main tick)
# Temp storage has: sword_id, Inventory, XP

# Void death protection — clamp Y coordinate
# Check current Y position (execution position = death location)
execute store result score #tomb_y ec.temp run data get entity @s Pos[1]

# Overworld/Nether: clamp to Y=1 if below -64
execute unless dimension minecraft:the_end if score #tomb_y ec.temp matches ..-64 positioned ~ 1 ~ run function evercraft:tomb/spawn_grave_at
execute unless dimension minecraft:the_end if score #tomb_y ec.temp matches ..-64 run return 0

# End: clamp to Y=70 if below 0
execute if dimension minecraft:the_end if score #tomb_y ec.temp matches ..-1 positioned ~ 70 ~ run function evercraft:tomb/spawn_grave_at
execute if dimension minecraft:the_end if score #tomb_y ec.temp matches ..-1 run return 0

# Normal case — spawn at current position
function evercraft:tomb/spawn_grave_at
