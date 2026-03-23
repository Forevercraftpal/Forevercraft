# Farming Trial — Snapshot current crop stats for delta tracking
# Run as: the player starting a farming trial
# ec.tt_s_* are stat-tracking scoreboards (auto-update as player picks up items)
# ec.tt_snap is a dummy that stores the starting aggregate value

# T1: wheat only
execute if score @s ec.tt_tier matches 1 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wheat

# T2: all crops (wheat+carrot+potato+beetroot)
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wheat
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_carrot
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_potato
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_beetrt

# T3: unique types — use storage-based snapshot
execute if score @s ec.tt_tier matches 3 run function evercraft:craftforever/trials/types/farming/snapshot_t3

# T4: all crops (same as T2)
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wheat
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_carrot
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_potato
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_beetrt

# T5: unique types (6 crops) — use storage-based snapshot
execute if score @s ec.tt_tier matches 5 run function evercraft:craftforever/trials/types/farming/snapshot_t5

# T6: all crops total
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wheat
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_carrot
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_potato
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_beetrt
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_melon
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_pumpkn

# T7: nether wart only
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_nwart

# T8: all crops total
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wheat
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_carrot
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_potato
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_beetrt
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_melon
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_pumpkn

# T9: all crops total (big target)
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wheat
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_carrot
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_potato
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_beetrt
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_melon
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_pumpkn

# T10: all crops total (huge target)
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wheat
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_carrot
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_potato
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_beetrt
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_melon
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_pumpkn
