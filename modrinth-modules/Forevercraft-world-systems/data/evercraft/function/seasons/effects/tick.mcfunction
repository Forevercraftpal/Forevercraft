# Seasonal Effects — Main Tick (1s schedule)
# Ambient particles and periodic mechanics per season

# Early exit if no players
execute unless entity @a run return run schedule function evercraft:seasons/effects/tick 1s

# Dispatch to current season's effects
execute if score #season_id ec.var matches 0 run function evercraft:seasons/effects/autumn
execute if score #season_id ec.var matches 1 run function evercraft:seasons/effects/winter
execute if score #season_id ec.var matches 2 run function evercraft:seasons/effects/spring
execute if score #season_id ec.var matches 3 run function evercraft:seasons/effects/summer

# === Snow Melt (when NOT winter and melt is active) ===
execute unless score #season_id ec.var matches 1 if score #snow_melt_active ec.var matches 1 run scoreboard players add #snow_melt_cd ec.var 1
execute unless score #season_id ec.var matches 1 if score #snow_melt_active ec.var matches 1 if score #snow_melt_cd ec.var matches 3.. run function evercraft:seasons/effects/snow_melt
execute unless score #season_id ec.var matches 1 if score #snow_melt_active ec.var matches 1 if score #snow_melt_cd ec.var matches 3.. run scoreboard players set #snow_melt_cd ec.var 0
# Auto-disable melt after 120 cycles (~6 minutes) — snow should be gone by then
execute unless score #season_id ec.var matches 1 if score #snow_melt_active ec.var matches 1 run scoreboard players add #snow_melt_cycles ec.var 1
execute if score #snow_melt_cycles ec.var matches 120.. run scoreboard players set #snow_melt_active ec.var 0

# Reschedule
schedule function evercraft:seasons/effects/tick 1s
