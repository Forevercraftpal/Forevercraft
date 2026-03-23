# Earthsong — 5x5 Area Mine (facing-aware)
# Run positioned at the target block
# Determine facing plane from player rotation

# Store player pitch for plane detection
execute store result score #st_pitch ec.var run data get entity @p Rotation[1] 1

# If looking mostly down or up (pitch > 45 or < -45) → horizontal plane (XZ)
execute if score #st_pitch ec.var matches 46.. run function evercraft:craftforever/spirit_tools/earthsong/plane_horizontal
execute if score #st_pitch ec.var matches ..-46 run function evercraft:craftforever/spirit_tools/earthsong/plane_horizontal
execute if score #st_pitch ec.var matches 46.. run return 0
execute if score #st_pitch ec.var matches ..-46 run return 0

# Otherwise check yaw for NS vs EW
execute store result score #st_yaw ec.var run data get entity @p Rotation[0] 1

# Normalize yaw to 0-360
execute if score #st_yaw ec.var matches ..-1 run scoreboard players add #st_yaw ec.var 360

# NS facing (yaw ~0/180 ±45): mine XY plane
execute if score #st_yaw ec.var matches 315..360 run function evercraft:craftforever/spirit_tools/earthsong/plane_ns
execute if score #st_yaw ec.var matches 0..45 run function evercraft:craftforever/spirit_tools/earthsong/plane_ns
execute if score #st_yaw ec.var matches 135..225 run function evercraft:craftforever/spirit_tools/earthsong/plane_ns
execute if score #st_yaw ec.var matches 315..360 run return 0
execute if score #st_yaw ec.var matches 0..45 run return 0
execute if score #st_yaw ec.var matches 135..225 run return 0

# EW facing: mine ZY plane
function evercraft:craftforever/spirit_tools/earthsong/plane_ew
