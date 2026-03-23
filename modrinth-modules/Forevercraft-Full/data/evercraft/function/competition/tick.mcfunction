# Competition — Tick (runs every 20 ticks / 1 second via main tick)
# Only run if active
execute unless score #comp_active ec.var matches 1..6 run return 0

# Decrement timer
scoreboard players remove #comp_timer ec.var 20

# Update bossbar
execute store result bossbar minecraft:competition value run scoreboard players get #comp_timer ec.var

# Per-player score update (type-specific)
execute if score #comp_active ec.var matches 1 as @a run function evercraft:competition/track/cooking
execute if score #comp_active ec.var matches 2 as @a run function evercraft:competition/track/mining
execute if score #comp_active ec.var matches 3 as @a run function evercraft:competition/track/forging
execute if score #comp_active ec.var matches 4 as @a run function evercraft:competition/track/prospecting
execute if score #comp_active ec.var matches 5 as @a run function evercraft:competition/track/foraging
execute if score #comp_active ec.var matches 6 as @a run function evercraft:competition/track/fishing

# Actionbar display for participants who have scored
execute as @a[scores={ec.comp_score=1..}] run function evercraft:competition/display_score

# Check timer expiry
execute if score #comp_timer ec.var matches ..0 run function evercraft:competition/end
