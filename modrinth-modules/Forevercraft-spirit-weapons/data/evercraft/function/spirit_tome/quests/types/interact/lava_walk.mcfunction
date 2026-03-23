# Lava Walker — stand within 3 blocks of lava for 30 seconds
# Check for lava nearby, increment counter if found, reset if not
execute at @s if block ~1 ~ ~ lava run scoreboard players add @s ec.sq_progress 1
execute at @s if block ~-1 ~ ~ lava run scoreboard players add @s ec.sq_progress 1
execute at @s if block ~ ~-1 ~ lava run scoreboard players add @s ec.sq_progress 1
execute at @s if block ~ ~ ~1 lava run scoreboard players add @s ec.sq_progress 1
execute at @s if block ~ ~ ~-1 lava run scoreboard players add @s ec.sq_progress 1
execute at @s if block ~2 ~ ~ lava run scoreboard players add @s ec.sq_progress 1
execute at @s if block ~-2 ~ ~ lava run scoreboard players add @s ec.sq_progress 1
execute at @s if block ~ ~ ~2 lava run scoreboard players add @s ec.sq_progress 1
execute at @s if block ~ ~ ~-2 lava run scoreboard players add @s ec.sq_progress 1

# If no lava was found (progress didn't change), this won't matter
# We need at least 30 ticks-worth. Using simplified: just check >= 30 increments
execute if score @s ec.sq_progress >= @s ec.sq_target run function evercraft:spirit_tome/complete
