# Underground Biome Encounters — Main Tick (10s self-schedule)
schedule function evercraft:encounters/tick 10s

# For each survival/adventure player: run active encounter OR check for trigger
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function evercraft:encounters/player_tick
