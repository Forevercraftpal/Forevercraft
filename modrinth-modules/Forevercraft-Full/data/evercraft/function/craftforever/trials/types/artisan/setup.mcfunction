# Artisan trial setup — timer, target, arena, snapshot, tools
# Run as/at: the trial player

# Set timer based on tier (in ticks)
execute if score @s ec.tt_tier matches 1 run scoreboard players set @s ec.tt_timer 1200
execute if score @s ec.tt_tier matches 2 run scoreboard players set @s ec.tt_timer 1800
execute if score @s ec.tt_tier matches 3 run scoreboard players set @s ec.tt_timer 1800
execute if score @s ec.tt_tier matches 4 run scoreboard players set @s ec.tt_timer 1500
execute if score @s ec.tt_tier matches 5 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 6 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 7 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 8 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 9 run scoreboard players set @s ec.tt_timer 3000
execute if score @s ec.tt_tier matches 10 run scoreboard players set @s ec.tt_timer 6000

# Set target based on tier
execute if score @s ec.tt_tier matches 1 run scoreboard players set @s ec.tt_target 10
execute if score @s ec.tt_tier matches 2 run scoreboard players set @s ec.tt_target 20
execute if score @s ec.tt_tier matches 3 run scoreboard players set @s ec.tt_target 16
execute if score @s ec.tt_tier matches 4 run scoreboard players set @s ec.tt_target 32
execute if score @s ec.tt_tier matches 5 run scoreboard players set @s ec.tt_target 40
execute if score @s ec.tt_tier matches 6 run scoreboard players set @s ec.tt_target 48
execute if score @s ec.tt_tier matches 7 run scoreboard players set @s ec.tt_target 64
execute if score @s ec.tt_tier matches 8 run scoreboard players set @s ec.tt_target 80
execute if score @s ec.tt_tier matches 9 run scoreboard players set @s ec.tt_target 128
execute if score @s ec.tt_tier matches 10 run scoreboard players set @s ec.tt_target 500

# Build arena
function evercraft:craftforever/trials/types/artisan/build_arena

# Snapshot stats
function evercraft:craftforever/trials/types/artisan/snapshot_stats

# Give trial shears
give @s shears[unbreakable={},custom_name={"text":"Trial Shears","color":"gold","italic":false},custom_data={trial_tool:1b}] 1
