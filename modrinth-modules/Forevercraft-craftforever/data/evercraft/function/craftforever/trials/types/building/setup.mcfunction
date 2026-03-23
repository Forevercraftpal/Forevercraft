# Building trial setup — timer, target, arena, snapshot, materials
# Run as/at: the trial player

# Set timer based on tier (in ticks)
execute if score @s ec.tt_tier matches 1 run scoreboard players set @s ec.tt_timer 1200
execute if score @s ec.tt_tier matches 2 run scoreboard players set @s ec.tt_timer 1500
execute if score @s ec.tt_tier matches 3 run scoreboard players set @s ec.tt_timer 1800
execute if score @s ec.tt_tier matches 4 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 5 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 6 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 7 run scoreboard players set @s ec.tt_timer 1800
execute if score @s ec.tt_tier matches 8 run scoreboard players set @s ec.tt_timer 3000
execute if score @s ec.tt_tier matches 9 run scoreboard players set @s ec.tt_timer 3600
execute if score @s ec.tt_tier matches 10 run scoreboard players set @s ec.tt_timer 6000

# Set target based on tier
execute if score @s ec.tt_tier matches 1 run scoreboard players set @s ec.tt_target 64
execute if score @s ec.tt_tier matches 2 run scoreboard players set @s ec.tt_target 100
execute if score @s ec.tt_tier matches 3 run scoreboard players set @s ec.tt_target 128
execute if score @s ec.tt_tier matches 4 run scoreboard players set @s ec.tt_target 200
execute if score @s ec.tt_tier matches 5 run scoreboard players set @s ec.tt_target 256
execute if score @s ec.tt_tier matches 6 run scoreboard players set @s ec.tt_target 384
execute if score @s ec.tt_tier matches 7 run scoreboard players set @s ec.tt_target 256
execute if score @s ec.tt_tier matches 8 run scoreboard players set @s ec.tt_target 512
execute if score @s ec.tt_tier matches 9 run scoreboard players set @s ec.tt_target 768
execute if score @s ec.tt_tier matches 10 run scoreboard players set @s ec.tt_target 1000

# Build arena
function evercraft:craftforever/trials/types/building/build_arena

# Snapshot stats
function evercraft:craftforever/trials/types/building/snapshot_stats

# Give building materials (cobblestone + some dirt/planks for variety)
# T1: 2 stacks cobble (128)
execute if score @s ec.tt_tier matches 1 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 1 run give @s cobblestone[custom_data={trial_tool:1b}] 64

# T2: 2 stacks cobble (128)
execute if score @s ec.tt_tier matches 2 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 2 run give @s cobblestone[custom_data={trial_tool:1b}] 64

# T3: 3 stacks cobble (192)
execute if score @s ec.tt_tier matches 3 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 3 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 3 run give @s cobblestone[custom_data={trial_tool:1b}] 64

# T4: 4 stacks cobble (256)
execute if score @s ec.tt_tier matches 4 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 4 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 4 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 4 run give @s cobblestone[custom_data={trial_tool:1b}] 64

# T5: 5 stacks cobble (320)
execute if score @s ec.tt_tier matches 5 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 5 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 5 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 5 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 5 run give @s cobblestone[custom_data={trial_tool:1b}] 64

# T6: 7 stacks cobble (448)
execute if score @s ec.tt_tier matches 6 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 6 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 6 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 6 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 6 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 6 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 6 run give @s cobblestone[custom_data={trial_tool:1b}] 64

# T7: 5 stacks cobble (320)
execute if score @s ec.tt_tier matches 7 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 7 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 7 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 7 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 7 run give @s cobblestone[custom_data={trial_tool:1b}] 64

# T8: 9 stacks cobble (576)
execute if score @s ec.tt_tier matches 8 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 8 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 8 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 8 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 8 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 8 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 8 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 8 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 8 run give @s cobblestone[custom_data={trial_tool:1b}] 64

# T9: 13 stacks cobble (832)
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 9 run give @s cobblestone[custom_data={trial_tool:1b}] 64

# T10: 17 stacks cobble (1088)
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64
execute if score @s ec.tt_tier matches 10 run give @s cobblestone[custom_data={trial_tool:1b}] 64

# Also give some dirt and planks for variety (all tiers)
give @s dirt[custom_data={trial_tool:1b}] 32
give @s oak_planks[custom_data={trial_tool:1b}] 32
