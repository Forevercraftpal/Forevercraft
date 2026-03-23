# Spirit Progression — Load
# Called from spirit/load.mcfunction
# Initializes progression scoreboards and starts the check schedule

# Progression tracking
scoreboard objectives add ec.sp_obj_done dummy "Tier Objectives Done"
scoreboard objectives add ec.sp_cur_streak dummy "Current Kill Streak"

# Initialize tick-based tracking timers
scoreboard players set #sp_survive_timer ec.var 0
scoreboard players set #sp_deathless_timer ec.var 0

# Start the self-scheduling progression check (every 5 seconds)
schedule function evercraft:spirit/progression/check_tier_up 100t