# Guidestone — Teleport player to destination
# Macro args: x, y, z, dim, name (from tp_target storage)
# Run as the player
# #tp_free ec.gs_temp: 1 = guild network (skip cost), 0 = normal (check unlock)

# Default: allowed
scoreboard players set #tp_allowed ec.gs_temp 1

# If not a free teleport, check unlock cost
execute unless score #tp_free ec.gs_temp matches 1 run function evercraft:guidestone/check_unlock

# If denied (not enough XP), abort
execute unless score #tp_allowed ec.gs_temp matches 1 run scoreboard players set #tp_free ec.gs_temp 0
execute unless score #tp_allowed ec.gs_temp matches 1 run return 0

# Reset free flag for next use
scoreboard players set #tp_free ec.gs_temp 0

# Close menu first
function evercraft:guidestone/menu/close

# Teleport
$execute in $(dim) run tp @s $(x) $(y) $(z)

# Effects
$tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Teleported to ",color:"light_purple"},{text:"$(name)",color:"gold",bold:true}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.8
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.5
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.05 40
