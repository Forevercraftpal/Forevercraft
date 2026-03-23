# ============================================================
# Check Structure Discoveries
# Count ec.struct_1..18, compare to jn.struct_count
# Run as player
# ============================================================

# Count discovered structures from existing scoreboards (vanilla types 1-18)
scoreboard players set #jn_sc jn.temp 0
execute if score @s ec.struct_1 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_2 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_3 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_4 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_5 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_6 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_7 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_8 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_9 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_10 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_11 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_12 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_13 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_14 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_15 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_16 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_17 matches 1 run scoreboard players add #jn_sc jn.temp 1
execute if score @s ec.struct_18 matches 1 run scoreboard players add #jn_sc jn.temp 1

# Check if count increased (new discovery since last check)
execute if score #jn_sc jn.temp > @s jn.struct_count run function evercraft:journal/record/structure_discovered

# Update stored count
scoreboard players operation @s jn.struct_count = #jn_sc jn.temp
