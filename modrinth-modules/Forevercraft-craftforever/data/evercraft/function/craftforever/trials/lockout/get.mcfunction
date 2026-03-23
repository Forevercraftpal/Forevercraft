# Trial Lockout — Get lockout value for current trial type
# Run as: the player. Reads ec.tt_type → copies dg.lo_ttN to #dg_lockout_val
scoreboard players set #dg_lockout_val ec.var 0
execute if score @s ec.tt_type matches 1 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_tt1
execute if score @s ec.tt_type matches 2 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_tt2
execute if score @s ec.tt_type matches 3 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_tt3
execute if score @s ec.tt_type matches 4 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_tt4
execute if score @s ec.tt_type matches 5 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_tt5
execute if score @s ec.tt_type matches 6 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_tt6
