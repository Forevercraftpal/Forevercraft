# Bestiary Stages — Give Reward
# Reads #rw_group bs.temp (1-6) and #rw_stage bs.temp (1-7)
# Spawns the appropriate crate and adds coins. Run as player.
# #rw_coins bs.temp must be pre-set to 0 by caller.

# === Determine crate tier (1=common..6=mythical) based on group+stage ===

# Groups 1-3 (A/B/C): stage 1=common, 2=uncommon, 3=rare, 4=ornate, 5=exquisite, 6-7=mythical, 7+50coins
execute if score #rw_group bs.temp matches 1..3 if score #rw_stage bs.temp matches 1 run scoreboard players set #rw_tier bs.temp 1
execute if score #rw_group bs.temp matches 1..3 if score #rw_stage bs.temp matches 2 run scoreboard players set #rw_tier bs.temp 2
execute if score #rw_group bs.temp matches 1..3 if score #rw_stage bs.temp matches 3 run scoreboard players set #rw_tier bs.temp 3
execute if score #rw_group bs.temp matches 1..3 if score #rw_stage bs.temp matches 4 run scoreboard players set #rw_tier bs.temp 4
execute if score #rw_group bs.temp matches 1..3 if score #rw_stage bs.temp matches 5 run scoreboard players set #rw_tier bs.temp 5
execute if score #rw_group bs.temp matches 1..3 if score #rw_stage bs.temp matches 6..7 run scoreboard players set #rw_tier bs.temp 6
execute if score #rw_group bs.temp matches 1..3 if score #rw_stage bs.temp matches 7 run scoreboard players set #rw_coins bs.temp 50

# Group 4 (D — Elite): 1=uncommon, 2-3=rare, 4=ornate, 5=exquisite, 6-7=mythical, 7+50coins
execute if score #rw_group bs.temp matches 4 if score #rw_stage bs.temp matches 1 run scoreboard players set #rw_tier bs.temp 2
execute if score #rw_group bs.temp matches 4 if score #rw_stage bs.temp matches 2..3 run scoreboard players set #rw_tier bs.temp 3
execute if score #rw_group bs.temp matches 4 if score #rw_stage bs.temp matches 4 run scoreboard players set #rw_tier bs.temp 4
execute if score #rw_group bs.temp matches 4 if score #rw_stage bs.temp matches 5 run scoreboard players set #rw_tier bs.temp 5
execute if score #rw_group bs.temp matches 4 if score #rw_stage bs.temp matches 6..7 run scoreboard players set #rw_tier bs.temp 6
execute if score #rw_group bs.temp matches 4 if score #rw_stage bs.temp matches 7 run scoreboard players set #rw_coins bs.temp 50

# Group 5 (E — Vanilla Bosses): 1=rare, 2-3=ornate, 4-5=exquisite, 6-7=mythical, 7+100coins
execute if score #rw_group bs.temp matches 5 if score #rw_stage bs.temp matches 1 run scoreboard players set #rw_tier bs.temp 3
execute if score #rw_group bs.temp matches 5 if score #rw_stage bs.temp matches 2..3 run scoreboard players set #rw_tier bs.temp 4
execute if score #rw_group bs.temp matches 5 if score #rw_stage bs.temp matches 4..5 run scoreboard players set #rw_tier bs.temp 5
execute if score #rw_group bs.temp matches 5 if score #rw_stage bs.temp matches 6..7 run scoreboard players set #rw_tier bs.temp 6
execute if score #rw_group bs.temp matches 5 if score #rw_stage bs.temp matches 7 run scoreboard players set #rw_coins bs.temp 100

# Group 6 (F — World Bosses): 1=ornate, 2-3=exquisite, 4-7=mythical, 6+50coins, 7+100coins
execute if score #rw_group bs.temp matches 6 if score #rw_stage bs.temp matches 1 run scoreboard players set #rw_tier bs.temp 4
execute if score #rw_group bs.temp matches 6 if score #rw_stage bs.temp matches 2..3 run scoreboard players set #rw_tier bs.temp 5
execute if score #rw_group bs.temp matches 6 if score #rw_stage bs.temp matches 4..7 run scoreboard players set #rw_tier bs.temp 6
execute if score #rw_group bs.temp matches 6 if score #rw_stage bs.temp matches 6 run scoreboard players set #rw_coins bs.temp 50
execute if score #rw_group bs.temp matches 6 if score #rw_stage bs.temp matches 7 run scoreboard players set #rw_coins bs.temp 100

# === Spawn crate at player position ===
execute if score #rw_tier bs.temp matches 1 at @s run function evercraft:mob_crates/spawn/common
execute if score #rw_tier bs.temp matches 2 at @s run function evercraft:mob_crates/spawn/uncommon
execute if score #rw_tier bs.temp matches 3 at @s run function evercraft:mob_crates/spawn/rare
execute if score #rw_tier bs.temp matches 4 at @s run function evercraft:mob_crates/spawn/ornate
execute if score #rw_tier bs.temp matches 5 at @s run function evercraft:mob_crates/spawn/exquisite
execute if score #rw_tier bs.temp matches 6 at @s run function evercraft:mob_crates/spawn/mythical

# === Add coins if any ===
execute unless score #rw_coins bs.temp matches 1.. run return 0
scoreboard players operation @s ec.coins += #rw_coins bs.temp
tellraw @s ["",{"text":"[Bestiary] ","color":"gold"},{"text":"+","color":"yellow"},{"score":{"name":"#rw_coins","objective":"bs.temp"},"color":"yellow"},{"text":" Forever Coins!","color":"yellow"}]
