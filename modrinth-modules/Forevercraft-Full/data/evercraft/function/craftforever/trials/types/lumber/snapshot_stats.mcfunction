# Lumber Trial — Snapshot current log stats for delta tracking
# Run as: the player starting a lumber trial
# ec.tt_s_* are stat-tracking scoreboards (auto-update as player mines logs)
# ec.tt_snap stores the starting aggregate value

# T1, T2, T4, T6, T7, T9, T10: sum of all log types
execute if score @s ec.tt_tier matches 1 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_oaklog
execute if score @s ec.tt_tier matches 1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_sprlog
execute if score @s ec.tt_tier matches 1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_birlog
execute if score @s ec.tt_tier matches 1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_junlog
execute if score @s ec.tt_tier matches 1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_acalog
execute if score @s ec.tt_tier matches 1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_drklog
execute if score @s ec.tt_tier matches 1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_mnglog
execute if score @s ec.tt_tier matches 1 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_chrlog

execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_oaklog
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_sprlog
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_birlog
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_junlog
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_acalog
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_drklog
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_mnglog
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_chrlog

# T3: unique types — uses storage-based snapshot
execute if score @s ec.tt_tier matches 3 run function evercraft:craftforever/trials/types/lumber/snapshot_t3

execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_oaklog
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_sprlog
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_birlog
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_junlog
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_acalog
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_drklog
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_mnglog
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_chrlog

# T5: unique types — uses storage-based snapshot
execute if score @s ec.tt_tier matches 5 run function evercraft:craftforever/trials/types/lumber/snapshot_t5

execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_oaklog
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_sprlog
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_birlog
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_junlog
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_acalog
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_drklog
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_mnglog
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_chrlog

execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_oaklog
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_sprlog
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_birlog
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_junlog
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_acalog
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_drklog
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_mnglog
execute if score @s ec.tt_tier matches 7 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_chrlog

# T8: jungle log only
execute if score @s ec.tt_tier matches 8 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_junlog

execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_oaklog
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_sprlog
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_birlog
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_junlog
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_acalog
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_drklog
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_mnglog
execute if score @s ec.tt_tier matches 9 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_chrlog

execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_oaklog
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_sprlog
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_birlog
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_junlog
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_acalog
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_drklog
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_mnglog
execute if score @s ec.tt_tier matches 10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_chrlog
