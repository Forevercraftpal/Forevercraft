# ============================================================
# Village Specialization System — Load
# Init scoreboards, constants, schedule guard tick
# ============================================================

# Scoreboards
scoreboard objectives add vs.temp dummy "Village Spec Temp"
scoreboard objectives add vs.exile dummy "Exiled Flag"

# Constants
scoreboard players set #4 ec.const 4
scoreboard players set #504000 ec.const 504000

# Start guard respawn check (10s self-schedule, doesn't need watchdog)
schedule function evercraft:village/upgrades/tick_guards 10s replace
