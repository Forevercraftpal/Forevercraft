# Guild Warp — Execute teleport
# Macro args: x, y, z, dim, name (from tp_target)
# @s = the player
# #tp_free ec.gs_temp already set (1=free, 0=check unlock)

# Default: allowed
scoreboard players set #tp_allowed ec.gs_temp 1

# If not free, check unlock cost (30 levels first time)
execute unless score #tp_free ec.gs_temp matches 1 run function evercraft:guidestone/check_unlock

# If denied (not enough XP), abort
execute unless score #tp_allowed ec.gs_temp matches 1 run return 0

# Close guild menu
function evercraft:guild/gui/menu/close

# Teleport
$execute in $(dim) run tp @s $(x) $(y) $(z)

# Effects
$tellraw @s [{text:"[Guild] ",color:"green"},{text:"Warped to ",color:"green"},{text:"$(name)",color:"gold",bold:true}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.8
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.5
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.05 40
