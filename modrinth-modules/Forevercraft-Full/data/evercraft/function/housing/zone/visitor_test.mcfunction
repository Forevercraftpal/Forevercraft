# Housing Visitor Test — Check if @s (visitor) is near the home of the tagged owner
# #hs_vx/vy/vz/vdim hs.temp = owner's home coords/dim
# @s = potential visitor, at visitor position

# Dimension check
scoreboard players set #hs_cdim hs.temp 0
execute if dimension minecraft:the_nether run scoreboard players set #hs_cdim hs.temp 1
execute if dimension minecraft:the_end run scoreboard players set #hs_cdim hs.temp 2
execute unless score #hs_cdim hs.temp = #hs_vdim hs.temp run return 0

# X distance
execute store result score #hs_dx hs.temp run data get entity @s Pos[0]
scoreboard players operation #hs_dx hs.temp -= #hs_vx hs.temp
execute if score #hs_dx hs.temp matches ..-1 run scoreboard players operation #hs_dx hs.temp *= #-1 ec.const

# Y distance
execute store result score #hs_dy hs.temp run data get entity @s Pos[1]
scoreboard players operation #hs_dy hs.temp -= #hs_vy hs.temp
execute if score #hs_dy hs.temp matches ..-1 run scoreboard players operation #hs_dy hs.temp *= #-1 ec.const

# Z distance
execute store result score #hs_dz hs.temp run data get entity @s Pos[2]
scoreboard players operation #hs_dz hs.temp -= #hs_vz hs.temp
execute if score #hs_dz hs.temp matches ..-1 run scoreboard players operation #hs_dz hs.temp *= #-1 ec.const

# All within 64 blocks? → visitor detected
execute unless score #hs_dx hs.temp matches ..64 run return 0
execute unless score #hs_dy hs.temp matches ..64 run return 0
execute unless score #hs_dz hs.temp matches ..64 run return 0

# Already tagged as visiting? Skip (prevent repeated notifications)
execute if entity @s[tag=hs.visiting] run return 0

# New visitor! Tag and notify
tag @s add hs.visiting
function evercraft:housing/zone/log_visitor
