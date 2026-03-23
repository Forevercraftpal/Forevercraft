# Building Trial — Snapshot current block placement stats for delta tracking
# Run as: the player starting a building trial
# ec.tt_s_cobble/dirt/planks are stat-tracking scoreboards (auto-update as player places)
# ec.tt_snap stores the starting aggregate value

scoreboard players operation @s ec.tt_snap = @s ec.tt_s_cobble
scoreboard players operation @s ec.tt_snap += @s ec.tt_s_dirt
scoreboard players operation @s ec.tt_snap += @s ec.tt_s_planks
