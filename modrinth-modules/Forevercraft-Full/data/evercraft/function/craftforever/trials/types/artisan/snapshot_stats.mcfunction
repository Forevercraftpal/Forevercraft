# Artisan Trial — Snapshot current stats for delta tracking
# Run as: the player starting an artisan trial
# ec.tt_s_* are stat-tracking scoreboards (auto-update)
# ec.tt_snap stores the starting aggregate value

# T1/T2/T5: wool only
execute if score @s ec.tt_tier matches 1 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wool
execute if score @s ec.tt_tier matches 2 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wool
execute if score @s ec.tt_tier matches 5 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wool

# T3: cobweb mined only
execute if score @s ec.tt_tier matches 3 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_cobweb

# T4: all flowers combined
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_poppy
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dandy
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_blorch
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_allium
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_tulip
execute if score @s ec.tt_tier matches 4 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_lily

# T6: wool + string
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wool
execute if score @s ec.tt_tier matches 6 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_string

# T7-T10: all materials (wool + string + cobweb + all flowers)
execute if score @s ec.tt_tier matches 7..10 run scoreboard players operation @s ec.tt_snap = @s ec.tt_s_wool
execute if score @s ec.tt_tier matches 7..10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_string
execute if score @s ec.tt_tier matches 7..10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_cobweb
execute if score @s ec.tt_tier matches 7..10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_poppy
execute if score @s ec.tt_tier matches 7..10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dandy
execute if score @s ec.tt_tier matches 7..10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_blorch
execute if score @s ec.tt_tier matches 7..10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_allium
execute if score @s ec.tt_tier matches 7..10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_tulip
execute if score @s ec.tt_tier matches 7..10 run scoreboard players operation @s ec.tt_snap += @s ec.tt_s_lily
