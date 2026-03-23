# Bestiary Stages — Check Stage (Macro)
# Args: {smob:"blaze", group:2}
# Called from on_kill after kill counter increment. Run as player.
# Compares kill count to group thresholds, updates bs.s_* stage score.

# Read current kills and stage
$execute store result score #bs_kills bs.temp run scoreboard players get @s bs.k_$(smob)
$execute store result score #bs_stage bs.temp run scoreboard players get @s bs.s_$(smob)

# Set group from macro arg
$scoreboard players set #bs_group bs.temp $(group)

# Set thresholds based on group
# Group 1 (A — Common Hostiles): 100, 500, 1500, 4000, 8000, 15000, 25000
execute if score #bs_group bs.temp matches 1 run scoreboard players set #t1 bs.temp 100
execute if score #bs_group bs.temp matches 1 run scoreboard players set #t2 bs.temp 500
execute if score #bs_group bs.temp matches 1 run scoreboard players set #t3 bs.temp 1500
execute if score #bs_group bs.temp matches 1 run scoreboard players set #t4 bs.temp 4000
execute if score #bs_group bs.temp matches 1 run scoreboard players set #t5 bs.temp 8000
execute if score #bs_group bs.temp matches 1 run scoreboard players set #t6 bs.temp 15000
execute if score #bs_group bs.temp matches 1 run scoreboard players set #t7 bs.temp 25000

# Group 2 (B — Uncommon Hostiles): 50, 200, 600, 1500, 3500, 6000, 10000
execute if score #bs_group bs.temp matches 2 run scoreboard players set #t1 bs.temp 50
execute if score #bs_group bs.temp matches 2 run scoreboard players set #t2 bs.temp 200
execute if score #bs_group bs.temp matches 2 run scoreboard players set #t3 bs.temp 600
execute if score #bs_group bs.temp matches 2 run scoreboard players set #t4 bs.temp 1500
execute if score #bs_group bs.temp matches 2 run scoreboard players set #t5 bs.temp 3500
execute if score #bs_group bs.temp matches 2 run scoreboard players set #t6 bs.temp 6000
execute if score #bs_group bs.temp matches 2 run scoreboard players set #t7 bs.temp 10000

# Group 3 (C — Rare Hostiles): 25, 100, 300, 750, 1500, 3000, 5000
execute if score #bs_group bs.temp matches 3 run scoreboard players set #t1 bs.temp 25
execute if score #bs_group bs.temp matches 3 run scoreboard players set #t2 bs.temp 100
execute if score #bs_group bs.temp matches 3 run scoreboard players set #t3 bs.temp 300
execute if score #bs_group bs.temp matches 3 run scoreboard players set #t4 bs.temp 750
execute if score #bs_group bs.temp matches 3 run scoreboard players set #t5 bs.temp 1500
execute if score #bs_group bs.temp matches 3 run scoreboard players set #t6 bs.temp 3000
execute if score #bs_group bs.temp matches 3 run scoreboard players set #t7 bs.temp 5000

# Group 4 (D — Elite/Boss): 5, 20, 60, 150, 350, 600, 1000
execute if score #bs_group bs.temp matches 4 run scoreboard players set #t1 bs.temp 5
execute if score #bs_group bs.temp matches 4 run scoreboard players set #t2 bs.temp 20
execute if score #bs_group bs.temp matches 4 run scoreboard players set #t3 bs.temp 60
execute if score #bs_group bs.temp matches 4 run scoreboard players set #t4 bs.temp 150
execute if score #bs_group bs.temp matches 4 run scoreboard players set #t5 bs.temp 350
execute if score #bs_group bs.temp matches 4 run scoreboard players set #t6 bs.temp 600
execute if score #bs_group bs.temp matches 4 run scoreboard players set #t7 bs.temp 1000

# Group 5 (E — Vanilla Bosses): 1, 5, 15, 30, 50, 75, 100
execute if score #bs_group bs.temp matches 5 run scoreboard players set #t1 bs.temp 1
execute if score #bs_group bs.temp matches 5 run scoreboard players set #t2 bs.temp 5
execute if score #bs_group bs.temp matches 5 run scoreboard players set #t3 bs.temp 15
execute if score #bs_group bs.temp matches 5 run scoreboard players set #t4 bs.temp 30
execute if score #bs_group bs.temp matches 5 run scoreboard players set #t5 bs.temp 50
execute if score #bs_group bs.temp matches 5 run scoreboard players set #t6 bs.temp 75
execute if score #bs_group bs.temp matches 5 run scoreboard players set #t7 bs.temp 100

# Group 6 (F — World Bosses): 1, 3, 8, 15, 25, 38, 50
execute if score #bs_group bs.temp matches 6 run scoreboard players set #t1 bs.temp 1
execute if score #bs_group bs.temp matches 6 run scoreboard players set #t2 bs.temp 3
execute if score #bs_group bs.temp matches 6 run scoreboard players set #t3 bs.temp 8
execute if score #bs_group bs.temp matches 6 run scoreboard players set #t4 bs.temp 15
execute if score #bs_group bs.temp matches 6 run scoreboard players set #t5 bs.temp 25
execute if score #bs_group bs.temp matches 6 run scoreboard players set #t6 bs.temp 38
execute if score #bs_group bs.temp matches 6 run scoreboard players set #t7 bs.temp 50

# Calculate new stage from kills vs thresholds
scoreboard players set #new_bs_stage bs.temp 0
execute if score #bs_kills bs.temp >= #t1 bs.temp run scoreboard players set #new_bs_stage bs.temp 1
execute if score #bs_kills bs.temp >= #t2 bs.temp run scoreboard players set #new_bs_stage bs.temp 2
execute if score #bs_kills bs.temp >= #t3 bs.temp run scoreboard players set #new_bs_stage bs.temp 3
execute if score #bs_kills bs.temp >= #t4 bs.temp run scoreboard players set #new_bs_stage bs.temp 4
execute if score #bs_kills bs.temp >= #t5 bs.temp run scoreboard players set #new_bs_stage bs.temp 5
execute if score #bs_kills bs.temp >= #t6 bs.temp run scoreboard players set #new_bs_stage bs.temp 6
execute if score #bs_kills bs.temp >= #t7 bs.temp run scoreboard players set #new_bs_stage bs.temp 7

# Write new stage
$scoreboard players operation @s bs.s_$(smob) = #new_bs_stage bs.temp

# Stage-up detection — announce if stage increased
execute unless score #new_bs_stage bs.temp > #bs_stage bs.temp run return 0
function evercraft:bestiary/stages/on_stage_up
