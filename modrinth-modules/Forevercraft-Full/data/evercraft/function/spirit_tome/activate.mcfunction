# Spirit Tome — Activate current quest
# Sets up tracking based on quest part, snapshots relevant stat, shows quest info

# Reset progress
scoreboard players set @s ec.sq_progress 0

# Route to set type, target, subtype, and quest text for current part
function evercraft:spirit_tome/quests/route

# Snapshot the relevant stat for delta-tracking quests (type 1)
execute if score @s ec.sq_type matches 1 run function evercraft:spirit_tome/quests/snapshot

# Snapshot for interact quests that use delta tracking
# 4: Cook a meal (snapshot meals_cooked)
execute if score @s ec.sq_sub matches 4 if score @s ec.sq_type matches 3 store result score @s ec.sq_snap run scoreboard players get @s ach.meals_cooked
# 26: Cookie Monster (snapshot food_eaten)
execute if score @s ec.sq_sub matches 26 if score @s ec.sq_type matches 3 store result score @s ec.sq_snap run scoreboard players get @s ach.food_eaten
# 39: Night Fisher (snapshot fish caught)
execute if score @s ec.sq_sub matches 39 if score @s ec.sq_type matches 3 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_fish
# 32: Old Reliable (reset progress for hold timer)
execute if score @s ec.sq_sub matches 32 if score @s ec.sq_type matches 3 run scoreboard players set @s ec.sq_progress 0
# 24: Stay Awhile (snapshot walk for movement detection)
execute if score @s ec.sq_sub matches 24 if score @s ec.sq_type matches 3 store result score @s ec.sq_snap run scoreboard players get @s ec.sq_walk

# Mark quest as active with grace period (skip 2 check cycles to prevent instant completion)
scoreboard players set @s ec.sq_active 1
scoreboard players set @s ec.sq_grace 2

# Show quest info
function evercraft:spirit_tome/quests/show_quest

playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.6 1.3
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.5
