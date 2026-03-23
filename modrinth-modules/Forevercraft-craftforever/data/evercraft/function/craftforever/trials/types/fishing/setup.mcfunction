# Fishing trial setup — timer, target, arena, snapshot, tools
# Run as/at: the trial player

# Set timer based on tier (in ticks)
execute if score @s ec.tt_tier matches 1 run scoreboard players set @s ec.tt_timer 1800
execute if score @s ec.tt_tier matches 2 run scoreboard players set @s ec.tt_timer 1800
execute if score @s ec.tt_tier matches 3 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 4 run scoreboard players set @s ec.tt_timer 1800
execute if score @s ec.tt_tier matches 5 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 6 run scoreboard players set @s ec.tt_timer 3600
execute if score @s ec.tt_tier matches 7 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 8 run scoreboard players set @s ec.tt_timer 2400
execute if score @s ec.tt_tier matches 9 run scoreboard players set @s ec.tt_timer 3000
execute if score @s ec.tt_tier matches 10 run scoreboard players set @s ec.tt_timer 6000

# Set target based on tier
execute if score @s ec.tt_tier matches 1 run scoreboard players set @s ec.tt_target 10
execute if score @s ec.tt_tier matches 2 run scoreboard players set @s ec.tt_target 15
execute if score @s ec.tt_tier matches 3 run scoreboard players set @s ec.tt_target 20
execute if score @s ec.tt_tier matches 4 run scoreboard players set @s ec.tt_target 20
execute if score @s ec.tt_tier matches 5 run scoreboard players set @s ec.tt_target 25
execute if score @s ec.tt_tier matches 6 run scoreboard players set @s ec.tt_target 25
execute if score @s ec.tt_tier matches 7 run scoreboard players set @s ec.tt_target 15
execute if score @s ec.tt_tier matches 8 run scoreboard players set @s ec.tt_target 20
execute if score @s ec.tt_tier matches 9 run scoreboard players set @s ec.tt_target 30
execute if score @s ec.tt_tier matches 10 run scoreboard players set @s ec.tt_target 20

# Build arena
function evercraft:craftforever/trials/types/fishing/build_arena

# Snapshot stats
function evercraft:craftforever/trials/types/fishing/snapshot_stats

# Give trial fishing rod (Lure III)
give @s fishing_rod[unbreakable={},enchantments={"minecraft:lure":3},custom_name={"text":"Trial Fishing Rod","color":"gold","italic":false},custom_data={trial_tool:1b}] 1
