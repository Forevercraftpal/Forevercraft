# Biome Node: Check if we should spawn a biome node near each player (5s schedule)
schedule function evercraft:craftforever/nodes/tick_spawn 5s

# Only check for players in survival/adventure
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function evercraft:craftforever/nodes/try_spawn
