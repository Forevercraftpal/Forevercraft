# Housing Visitor Leave Check — Remove visiting tag if not near any home
# @s = player with hs.visiting tag, at player position

# Store visitor position
execute store result score #hs_vis_x hs.temp run data get entity @s Pos[0]
execute store result score #hs_vis_y hs.temp run data get entity @s Pos[1]
execute store result score #hs_vis_z hs.temp run data get entity @s Pos[2]
scoreboard players set #hs_vis_dim hs.temp 0
execute if dimension minecraft:the_nether run scoreboard players set #hs_vis_dim hs.temp 1
execute if dimension minecraft:the_end run scoreboard players set #hs_vis_dim hs.temp 2

scoreboard players set #hs_near_any hs.temp 0

# Check distance to every homeowner (skip self)
tag @s add hs.vis_self
execute as @a[scores={hs.tier=1..},tag=!hs.vis_self] run function evercraft:housing/zone/visitor_proximity
tag @s remove hs.vis_self

# If not near any home, remove visiting tag
execute if score #hs_near_any hs.temp matches 0 run tag @s remove hs.visiting
