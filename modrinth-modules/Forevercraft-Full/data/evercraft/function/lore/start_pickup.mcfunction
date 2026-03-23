# Lore Discovery: Begin 3-second pickup progress
# Run as the player who clicked, at player position

# If already picking up another sparkle, ignore
execute if score @s ec.lore_picking matches 1 run return 0

# Mark player as picking up
scoreboard players set @s ec.lore_picking 1
scoreboard players set @s ec.lore_progress 0

# Store sparkle position for range checking during pickup
execute store result score @s ec.lore_sx run data get entity @e[type=marker,tag=ec.lore_data,distance=..5,limit=1,sort=nearest] Pos[0] 1
execute store result score @s ec.lore_sy run data get entity @e[type=marker,tag=ec.lore_data,distance=..5,limit=1,sort=nearest] Pos[1] 1
execute store result score @s ec.lore_sz run data get entity @e[type=marker,tag=ec.lore_data,distance=..5,limit=1,sort=nearest] Pos[2] 1

# Show boss bar
bossbar set evercraft:lore_pickup value 0
bossbar set evercraft:lore_pickup visible true
bossbar set evercraft:lore_pickup players @s

# Start sound
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.6 0.8
