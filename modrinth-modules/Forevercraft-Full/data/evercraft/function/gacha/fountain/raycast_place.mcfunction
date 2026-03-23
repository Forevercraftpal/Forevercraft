# Raycast forward from eyes to find the placed player_head/player_wall_head
# Max 8 blocks (40 steps * 0.2)
scoreboard players add @s ec.temp 1

# Check for player_head at current position with no existing fountain marker
execute if block ~ ~ ~ minecraft:player_head unless entity @e[type=marker,tag=ec.fountain,dx=0,dy=0,dz=0,limit=1] align xyz run function evercraft:gacha/fountain/setup_fountain

# Also check wall head variant
execute if entity @s[tag=ec.fountain_searching] if block ~ ~ ~ minecraft:player_wall_head unless entity @e[type=marker,tag=ec.fountain,dx=0,dy=0,dz=0,limit=1] align xyz run function evercraft:gacha/fountain/setup_fountain

# Continue if not found and under limit
execute if entity @s[tag=ec.fountain_searching] if score @s ec.temp matches ..40 positioned ^ ^ ^0.2 run function evercraft:gacha/fountain/raycast_place
