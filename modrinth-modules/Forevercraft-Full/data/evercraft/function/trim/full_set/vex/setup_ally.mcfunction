# Setup the vex ally - runs as the newly summoned vex
effect give @s glowing 5 0 false
tag @s add vex_ally
tag @s add join_my_team

# Set the vex to bound near the player's position
data modify entity @s bound_pos set from entity @p[distance=..10] Pos

tag @s remove vex_ally_new

# Join the spawning player's team for friendly fire protection
execute as @p[distance=..10] at @s run function evercraft:trim/ally_join_team
