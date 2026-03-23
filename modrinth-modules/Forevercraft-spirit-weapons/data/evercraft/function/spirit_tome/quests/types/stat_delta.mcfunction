# Spirit Tome — Stat delta check (Type 1)
# Reads current stat value, subtracts snapshot, compares to target

# Read current stat based on subtype
execute if score @s ec.sq_sub matches 1 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_mkills
execute if score @s ec.sq_sub matches 2 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_walk
execute if score @s ec.sq_sub matches 3 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_jump
execute if score @s ec.sq_sub matches 4 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_swim
execute if score @s ec.sq_sub matches 5 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_sprint
execute if score @s ec.sq_sub matches 6 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_fish
execute if score @s ec.sq_sub matches 7 run function evercraft:spirit_tome/quests/types/read_stone
execute if score @s ec.sq_sub matches 8 run function evercraft:spirit_tome/quests/types/read_iron
execute if score @s ec.sq_sub matches 9 run function evercraft:spirit_tome/quests/types/read_diamond
execute if score @s ec.sq_sub matches 10 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_kill_chicken
execute if score @s ec.sq_sub matches 11 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_kill_enderman
execute if score @s ec.sq_sub matches 12 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_use_shears
execute if score @s ec.sq_sub matches 13 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_use_torch
execute if score @s ec.sq_sub matches 14 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_trident
execute if score @s ec.sq_sub matches 15 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_smelt
execute if score @s ec.sq_sub matches 16 store result score #sq_cur ec.var run scoreboard players get @s ec.sq_use_anvil
execute if score @s ec.sq_sub matches 17 store result score #sq_cur ec.var run scoreboard players get @s ach.crops_harvested
execute if score @s ec.sq_sub matches 18 store result score #sq_cur ec.var run scoreboard players get @s ach.food_eaten

# Compute delta: progress = current - snapshot
scoreboard players operation @s ec.sq_progress = #sq_cur ec.var
scoreboard players operation @s ec.sq_progress -= @s ec.sq_snap

# For distance stats (walk/swim/sprint in cm), convert to blocks for display
# The target is already set in cm, so the comparison works directly

# Check completion
execute if score @s ec.sq_progress >= @s ec.sq_target run function evercraft:spirit_tome/complete
