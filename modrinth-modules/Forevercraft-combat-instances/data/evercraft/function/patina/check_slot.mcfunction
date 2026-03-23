# Patina — Check one artifact slot for progression
# Macro: slot (item replace spec), data_path (entity data read path)
# Requires: #pat_slot_type ec.var set by caller

# Read current patina values directly from entity data (no hopper cart needed)
scoreboard players set #pat_ticks ec.var 0
scoreboard players set #pat_stage ec.var 0
$execute store result score #pat_ticks ec.var run data get entity @s $(data_path).components."minecraft:custom_data".patina_ticks
$execute store result score #pat_stage ec.var run data get entity @s $(data_path).components."minecraft:custom_data".patina

# Accumulate delta ticks for this slot (per-player scoreboard avoids item replace)
execute if score #pat_slot_type ec.var matches 0 run scoreboard players add @s ec.pd0 60
execute if score #pat_slot_type ec.var matches 1 run scoreboard players add @s ec.pd1 60
execute if score #pat_slot_type ec.var matches 2 run scoreboard players add @s ec.pd2 60
execute if score #pat_slot_type ec.var matches 3 run scoreboard players add @s ec.pd3 60
execute if score #pat_slot_type ec.var matches 4 run scoreboard players add @s ec.pd4 60

# Read accumulated delta into temp
scoreboard players set #pat_delta ec.var 0
execute if score #pat_slot_type ec.var matches 0 run scoreboard players operation #pat_delta ec.var = @s ec.pd0
execute if score #pat_slot_type ec.var matches 1 run scoreboard players operation #pat_delta ec.var = @s ec.pd1
execute if score #pat_slot_type ec.var matches 2 run scoreboard players operation #pat_delta ec.var = @s ec.pd2
execute if score #pat_slot_type ec.var matches 3 run scoreboard players operation #pat_delta ec.var = @s ec.pd3
execute if score #pat_slot_type ec.var matches 4 run scoreboard players operation #pat_delta ec.var = @s ec.pd4

# Total ticks = item base + accumulated delta
scoreboard players operation #pat_ticks ec.var += #pat_delta ec.var

# Check stage thresholds (cumulative seconds: 2h=7200, 8h=28800, 24h=86400, 72h=259200)
scoreboard players set #pat_new_stage ec.var 0
execute if score #pat_stage ec.var matches 0 if score #pat_ticks ec.var matches 7200.. run scoreboard players set #pat_new_stage ec.var 1
execute if score #pat_stage ec.var matches 1 if score #pat_ticks ec.var matches 28800.. run scoreboard players set #pat_new_stage ec.var 2
execute if score #pat_stage ec.var matches 2 if score #pat_ticks ec.var matches 86400.. run scoreboard players set #pat_new_stage ec.var 3
execute if score #pat_stage ec.var matches 3 if score #pat_ticks ec.var matches 259200.. run scoreboard players set #pat_new_stage ec.var 4

# Only write back to item on stage upgrade (avoids equip sound every 60s)
execute if score #pat_new_stage ec.var matches 1.. run function evercraft:patina/write_upgrade with storage evercraft:patina
