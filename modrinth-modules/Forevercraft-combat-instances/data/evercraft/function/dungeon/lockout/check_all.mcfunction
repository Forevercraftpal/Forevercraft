# Dungeon Lockout — Check all per-structure lockouts for expiry
# Run as: player with dg.lo_any >= 1 (called every 5s via watchdog)
# For each active lockout: copy to #dg_lo_val, set struct_id, call check_one, clear if expired

execute store result score #dg_now ec.var run time query gametime

# dg.lo_1 (Ancient City)
execute if score @s dg.lo_1 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_1
execute if score @s dg.lo_1 matches 1.. run scoreboard players set #dg_struct_id ec.var 1
execute if score @s dg.lo_1 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_1 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_1 0

# dg.lo_2 (End City)
execute if score @s dg.lo_2 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_2
execute if score @s dg.lo_2 matches 1.. run scoreboard players set #dg_struct_id ec.var 2
execute if score @s dg.lo_2 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_2 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_2 0

# dg.lo_3 (Trial Chambers)
execute if score @s dg.lo_3 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_3
execute if score @s dg.lo_3 matches 1.. run scoreboard players set #dg_struct_id ec.var 3
execute if score @s dg.lo_3 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_3 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_3 0

# dg.lo_4 (Stronghold)
execute if score @s dg.lo_4 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_4
execute if score @s dg.lo_4 matches 1.. run scoreboard players set #dg_struct_id ec.var 4
execute if score @s dg.lo_4 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_4 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_4 0

# dg.lo_5 (Woodland Mansion)
execute if score @s dg.lo_5 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_5
execute if score @s dg.lo_5 matches 1.. run scoreboard players set #dg_struct_id ec.var 5
execute if score @s dg.lo_5 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_5 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_5 0

# dg.lo_6 (Bastion Remnant)
execute if score @s dg.lo_6 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_6
execute if score @s dg.lo_6 matches 1.. run scoreboard players set #dg_struct_id ec.var 6
execute if score @s dg.lo_6 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_6 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_6 0

# dg.lo_7 (Nether Fortress)
execute if score @s dg.lo_7 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_7
execute if score @s dg.lo_7 matches 1.. run scoreboard players set #dg_struct_id ec.var 7
execute if score @s dg.lo_7 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_7 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_7 0

# dg.lo_8 (Ocean Monument)
execute if score @s dg.lo_8 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_8
execute if score @s dg.lo_8 matches 1.. run scoreboard players set #dg_struct_id ec.var 8
execute if score @s dg.lo_8 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_8 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_8 0

# dg.lo_9 (Desert Pyramid)
execute if score @s dg.lo_9 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_9
execute if score @s dg.lo_9 matches 1.. run scoreboard players set #dg_struct_id ec.var 9
execute if score @s dg.lo_9 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_9 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_9 0

# dg.lo_10 (Jungle Pyramid)
execute if score @s dg.lo_10 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_10
execute if score @s dg.lo_10 matches 1.. run scoreboard players set #dg_struct_id ec.var 10
execute if score @s dg.lo_10 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_10 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_10 0

# dg.lo_11 (Shipwreck)
execute if score @s dg.lo_11 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_11
execute if score @s dg.lo_11 matches 1.. run scoreboard players set #dg_struct_id ec.var 11
execute if score @s dg.lo_11 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_11 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_11 0

# dg.lo_12 (Ocean Ruin)
execute if score @s dg.lo_12 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_12
execute if score @s dg.lo_12 matches 1.. run scoreboard players set #dg_struct_id ec.var 12
execute if score @s dg.lo_12 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_12 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_12 0

# dg.lo_13 (Igloo)
execute if score @s dg.lo_13 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_13
execute if score @s dg.lo_13 matches 1.. run scoreboard players set #dg_struct_id ec.var 13
execute if score @s dg.lo_13 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_13 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_13 0

# dg.lo_14 (Pillager Outpost)
execute if score @s dg.lo_14 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_14
execute if score @s dg.lo_14 matches 1.. run scoreboard players set #dg_struct_id ec.var 14
execute if score @s dg.lo_14 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_14 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_14 0

# dg.lo_17 (Mineshaft)
execute if score @s dg.lo_17 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_17
execute if score @s dg.lo_17 matches 1.. run scoreboard players set #dg_struct_id ec.var 17
execute if score @s dg.lo_17 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_17 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_17 0

# dg.lo_18 (Ruined Portal)
execute if score @s dg.lo_18 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_18
execute if score @s dg.lo_18 matches 1.. run scoreboard players set #dg_struct_id ec.var 18
execute if score @s dg.lo_18 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_18 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_18 0

# dg.lo_19 (Swamp Hut)
execute if score @s dg.lo_19 matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_19
execute if score @s dg.lo_19 matches 1.. run scoreboard players set #dg_struct_id ec.var 19
execute if score @s dg.lo_19 matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_19 matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_19 0

# dg.lo_v (Village Defense)
execute if score @s dg.lo_v matches 1.. run scoreboard players operation #dg_lo_val ec.var = @s dg.lo_v
execute if score @s dg.lo_v matches 1.. run scoreboard players set #dg_struct_id ec.var 20
execute if score @s dg.lo_v matches 1.. run function evercraft:dungeon/lockout/check_one
execute if score @s dg.lo_v matches 1.. if score #dg_lo_expired ec.var matches 1 run scoreboard players set @s dg.lo_v 0

# --- Update gate flag ---
# If no lockouts remain, clear dg.lo_any so tick skips this player
scoreboard players set @s dg.lo_any 0
execute if score @s dg.lo_1 matches 1.. run return 0
execute if score @s dg.lo_2 matches 1.. run return 0
execute if score @s dg.lo_3 matches 1.. run return 0
execute if score @s dg.lo_4 matches 1.. run return 0
execute if score @s dg.lo_5 matches 1.. run return 0
execute if score @s dg.lo_6 matches 1.. run return 0
execute if score @s dg.lo_7 matches 1.. run return 0
execute if score @s dg.lo_8 matches 1.. run return 0
execute if score @s dg.lo_9 matches 1.. run return 0
execute if score @s dg.lo_10 matches 1.. run return 0
execute if score @s dg.lo_11 matches 1.. run return 0
execute if score @s dg.lo_12 matches 1.. run return 0
execute if score @s dg.lo_13 matches 1.. run return 0
execute if score @s dg.lo_14 matches 1.. run return 0
execute if score @s dg.lo_17 matches 1.. run return 0
execute if score @s dg.lo_18 matches 1.. run return 0
execute if score @s dg.lo_19 matches 1.. run return 0
execute if score @s dg.lo_v matches 1.. run return 0
