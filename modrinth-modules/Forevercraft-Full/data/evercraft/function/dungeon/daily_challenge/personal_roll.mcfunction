# Personal Daily Challenge — Per-Player Roll
# Run as each player at dawn (or on login if missed dawn)
# Classifies playstyle → assigns dungeon or trial daily challenge

# Skip if already rolled today
execute if score @s ec.daily_day = #visual_day ec.var run return 0

# Mark today as rolled
scoreboard players operation @s ec.daily_day = #visual_day ec.var
scoreboard players set @s ec.daily_done 0

# === PLAYSTYLE CLASSIFICATION ===
# Combat score = dungeons completed + bosses killed
scoreboard players set #dc_combat ec.temp 0
scoreboard players operation #dc_combat ec.temp += @s ach.dungeons_done
scoreboard players operation #dc_combat ec.temp += @s ach.boss_kills

# Craft score = trials completed * 3 + artisan rank
scoreboard players set #dc_craft ec.temp 0
scoreboard players operation #dc_craft ec.temp += @s ec.tt_completed
scoreboard players operation #dc_craft ec.temp += @s ec.tt_completed
scoreboard players operation #dc_craft ec.temp += @s ec.tt_completed
scoreboard players operation #dc_craft ec.temp += @s ec.cf_rank

# Assign daily type based on dominant playstyle
# Default: dungeon (0)
scoreboard players set @s ec.daily_type 0

# If craft > combat → trial daily (1)
execute if score #dc_craft ec.temp > #dc_combat ec.temp run scoreboard players set @s ec.daily_type 1

# Tiebreaker for new players (both 0): alternate by day number
execute if score #dc_combat ec.temp matches 0 if score #dc_craft ec.temp matches 0 run scoreboard players operation #dc_tie ec.temp = #visual_day ec.var
execute if score #dc_combat ec.temp matches 0 if score #dc_craft ec.temp matches 0 run scoreboard players operation #dc_tie ec.temp %= #2 ec.const
execute if score #dc_combat ec.temp matches 0 if score #dc_craft ec.temp matches 0 if score #dc_tie ec.temp matches 1 run scoreboard players set @s ec.daily_type 1
