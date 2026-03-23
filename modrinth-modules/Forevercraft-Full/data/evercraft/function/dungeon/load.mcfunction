# Dungeon Instance System — Load
# Called from init.mcfunction on datapack load

# Death detection scoreboard
scoreboard objectives add dg.deaths deathCount "Dungeon Deaths"

# Per-structure lockout timers (store gametime of last completion)
scoreboard objectives add dg.lo_1 dummy "Lockout: Ancient City"
scoreboard objectives add dg.lo_2 dummy "Lockout: End City"
scoreboard objectives add dg.lo_3 dummy "Lockout: Trial Chambers"
scoreboard objectives add dg.lo_4 dummy "Lockout: Stronghold"
scoreboard objectives add dg.lo_5 dummy "Lockout: Mansion"
scoreboard objectives add dg.lo_6 dummy "Lockout: Bastion Remnant"
scoreboard objectives add dg.lo_7 dummy "Lockout: Fortress"
scoreboard objectives add dg.lo_8 dummy "Lockout: Monument"
scoreboard objectives add dg.lo_9 dummy "Lockout: Desert Pyramid"
scoreboard objectives add dg.lo_10 dummy "Lockout: Jungle Pyramid"
scoreboard objectives add dg.lo_11 dummy "Lockout: Shipwreck"
scoreboard objectives add dg.lo_12 dummy "Lockout: Ocean Ruin"
scoreboard objectives add dg.lo_13 dummy "Lockout: Igloo"
scoreboard objectives add dg.lo_14 dummy "Lockout: Pillager Outpost"
scoreboard objectives add dg.lo_17 dummy "Lockout: Mineshaft"
scoreboard objectives add dg.lo_18 dummy "Lockout: Ruined Portal"
scoreboard objectives add dg.lo_19 dummy "Lockout: Swamp Hut"
scoreboard objectives add dg.lo_v dummy "Lockout: Village Defense"
scoreboard objectives add dg.lo_tt1 dummy "Lockout: Mining Trial"
scoreboard objectives add dg.lo_tt2 dummy "Lockout: Farming Trial"
scoreboard objectives add dg.lo_tt3 dummy "Lockout: Fishing Trial"
scoreboard objectives add dg.lo_tt4 dummy "Lockout: Building Trial"
scoreboard objectives add dg.lo_tt5 dummy "Lockout: Lumber Trial"
scoreboard objectives add dg.lo_tt6 dummy "Lockout: Artisan Trial"
scoreboard objectives add dg.lo_any dummy "Has Any Lockout"

# Personal Daily Challenge
scoreboard objectives add ec.daily_type dummy "Daily Type (0=dungeon,1=trial)"
scoreboard objectives add ec.daily_done dummy "Daily Challenge Done"
scoreboard objectives add ec.daily_day dummy "Daily Last Roll Day"

# Leaderboard
scoreboard objectives add dg.start_time dummy "Dungeon Start Time"
scoreboard objectives add dg.elapsed dummy "Dungeon Elapsed Ticks"
scoreboard objectives add dg.elapsed_s dummy "Dungeon Elapsed Seconds"
scoreboard objectives add dg.best_time dummy "Dungeon Best Time"
scoreboard objectives add dg.best_time_s dummy "Dungeon Best Seconds"
scoreboard objectives add dg.best_inst dummy "Dungeon Best Instance"
scoreboard objectives add dg.menu_time dummy "Dungeon Menu Inactivity"

# Constants
scoreboard players set #5 ec.const 5
scoreboard players set #6 ec.const 6
scoreboard players set #17 ec.const 17
scoreboard players set #20 ec.const 20
# 7 in-game days = 7 * 72000 real ticks = 504000 gametime ticks
scoreboard players set #504000 ec.const 504000

# Daily floor counter (30-floor daily limit, reset at dawn)
scoreboard objectives add ec.dg_floors_today dummy "Dungeon Floors Today"

# Multi-floor descent trigger
scoreboard objectives add ec.dg_descend trigger "Dungeon Descend"
scoreboard players enable @a ec.dg_descend

# Initialize global state
execute unless score #dg_active ec.var matches 0.. run scoreboard players set #dg_active ec.var 0

# Daily Challenge — always roll on load to ensure valid #dc_struct/#dc_modifier
function evercraft:dungeon/daily_challenge/roll

# Unknown Structure Dungeon — start passive scan
schedule function evercraft:dungeon/unknown/scan 2s
