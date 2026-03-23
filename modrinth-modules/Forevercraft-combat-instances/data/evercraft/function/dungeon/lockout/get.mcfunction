# Dungeon Lockout — Get lockout score for current structure
# Reads from dg.lo_X based on #dg_struct_id ec.var
# Run as: the player. Output: #dg_lockout_val ec.var (gametime of last completion, 0 if never)

scoreboard players set #dg_lockout_val ec.var 0

execute if score #dg_struct_id ec.var matches 1 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_1
execute if score #dg_struct_id ec.var matches 2 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_2
execute if score #dg_struct_id ec.var matches 3 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_3
execute if score #dg_struct_id ec.var matches 4 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_4
execute if score #dg_struct_id ec.var matches 5 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_5
execute if score #dg_struct_id ec.var matches 6 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_6
execute if score #dg_struct_id ec.var matches 7 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_7
execute if score #dg_struct_id ec.var matches 8 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_8
execute if score #dg_struct_id ec.var matches 9 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_9
execute if score #dg_struct_id ec.var matches 10 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_10
execute if score #dg_struct_id ec.var matches 11 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_11
execute if score #dg_struct_id ec.var matches 12 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_12
execute if score #dg_struct_id ec.var matches 13 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_13
execute if score #dg_struct_id ec.var matches 14 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_14
execute if score #dg_struct_id ec.var matches 17 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_17
execute if score #dg_struct_id ec.var matches 18 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_18
execute if score #dg_struct_id ec.var matches 19 run scoreboard players operation #dg_lockout_val ec.var = @s dg.lo_19
