# World Boss — Natural Spawn Timer Check
# Called every 1s tick when no boss is active
# Checks if 7 in-game days (504,000 gametime ticks) have passed since last spawn

# Throttle: only check every ~30 ticks (use timer counter)
scoreboard players add #wb_natural_timer ec.var 1
execute unless score #wb_natural_timer ec.var matches 30.. run return 0
scoreboard players set #wb_natural_timer ec.var 0

# Must have players online
execute unless entity @a run return 0

# Calculate time since last natural spawn/summon
execute store result score #wb_temp ec.var run time query gametime
scoreboard players operation #wb_temp2 ec.var = #wb_temp ec.var
scoreboard players operation #wb_temp2 ec.var -= #wb_natural_cd ec.var

# 7 in-game days = 504,000 gametime ticks
execute if score #wb_temp2 ec.var matches ..503999 run return 0

# Timer expired — attempt natural spawn on a random online player
execute as @r run function evercraft:bosses/natural/try_spawn
