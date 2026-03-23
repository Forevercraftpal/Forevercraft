# Daily Challenge — Roll today's structure + modifier from day number
# Called at dawn (daily reset). Deterministic: same day = same combo.
# 17 key-entry structures × 6 modifiers = 102 combos, cycles every 17 days for structures.
# Village Defense excluded — uses separate horn-based entry system, can't be daily challenge.

# Sequential index: day % 17 → 0-16, then map to actual struct IDs
scoreboard players operation #dc_seq ec.var = #visual_day ec.var
scoreboard players operation #dc_seq ec.var %= #17 ec.const

# Map sequential 0-16 → actual structure IDs (non-contiguous: 1-14, 17-19)
scoreboard players set #dc_struct ec.var 0
execute if score #dc_seq ec.var matches 0 run scoreboard players set #dc_struct ec.var 1
execute if score #dc_seq ec.var matches 1 run scoreboard players set #dc_struct ec.var 2
execute if score #dc_seq ec.var matches 2 run scoreboard players set #dc_struct ec.var 3
execute if score #dc_seq ec.var matches 3 run scoreboard players set #dc_struct ec.var 4
execute if score #dc_seq ec.var matches 4 run scoreboard players set #dc_struct ec.var 5
execute if score #dc_seq ec.var matches 5 run scoreboard players set #dc_struct ec.var 6
execute if score #dc_seq ec.var matches 6 run scoreboard players set #dc_struct ec.var 7
execute if score #dc_seq ec.var matches 7 run scoreboard players set #dc_struct ec.var 8
execute if score #dc_seq ec.var matches 8 run scoreboard players set #dc_struct ec.var 9
execute if score #dc_seq ec.var matches 9 run scoreboard players set #dc_struct ec.var 10
execute if score #dc_seq ec.var matches 10 run scoreboard players set #dc_struct ec.var 11
execute if score #dc_seq ec.var matches 11 run scoreboard players set #dc_struct ec.var 12
execute if score #dc_seq ec.var matches 12 run scoreboard players set #dc_struct ec.var 13
execute if score #dc_seq ec.var matches 13 run scoreboard players set #dc_struct ec.var 14
execute if score #dc_seq ec.var matches 14 run scoreboard players set #dc_struct ec.var 17
execute if score #dc_seq ec.var matches 15 run scoreboard players set #dc_struct ec.var 18
execute if score #dc_seq ec.var matches 16 run scoreboard players set #dc_struct ec.var 19

# Modifier: day % 6 + 1 → 1-6
scoreboard players operation #dc_modifier ec.var = #visual_day ec.var
scoreboard players operation #dc_modifier ec.var %= #6 ec.const
scoreboard players add #dc_modifier ec.var 1

# Reset announcement flag so it fires at 10am
scoreboard players set #daily_challenge_announced ec.var 0
