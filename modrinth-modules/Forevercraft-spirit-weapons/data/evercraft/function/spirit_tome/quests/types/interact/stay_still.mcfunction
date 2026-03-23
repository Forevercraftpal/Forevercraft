# Stay Awhile — stand still for 60 seconds
# Increment progress each second if walk delta = 0 in the last second, reset if moved
execute store result score #sq_walk_now ec.var run scoreboard players get @s ec.sq_walk
execute store result score #sq_walk_diff ec.var run scoreboard players get @s ec.sq_walk
scoreboard players operation #sq_walk_diff ec.var -= @s ec.sq_snap

# If player hasn't moved since last check, increment counter
execute if score #sq_walk_diff ec.var = @s ec.sq_progress run scoreboard players add @s ec.sq_progress 1

# Update last known walk position — reuse snap to track last-check value
# If walk changed since last check, reset progress to 0
execute unless score #sq_walk_diff ec.var = @s ec.sq_progress run scoreboard players set @s ec.sq_progress 0

# Check: 60 seconds = 60 checks at 1/sec
execute if score @s ec.sq_progress matches 60.. run function evercraft:spirit_tome/complete
