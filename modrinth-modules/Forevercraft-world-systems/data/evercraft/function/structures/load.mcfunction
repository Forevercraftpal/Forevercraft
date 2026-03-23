# Chest Filler System - Load
# Per-player loot from structure chests - each player gets unique loot!
# Now with improved structure loot + luck-based bonus container chance!

scoreboard objectives add cf.init dummy
scoreboard players add chest_filler cf.init 0
execute unless score chest_filler cf.init matches 1 run function evercraft:structures/init

# Ensure new scoreboards exist (for existing worlds updating)
scoreboard objectives add cf.struct_id dummy
scoreboard objectives add cf.bonus_roll dummy

# Constants for position encoding
scoreboard players set #10000 cf.temp 10000
scoreboard players set #1000 cf.temp 1000
scoreboard players set #100000 cf.temp 100000
scoreboard players set #100000000 cf.temp 100000000

# Constants for Dream Rate scaling
scoreboard objectives add cf.const dummy
scoreboard players set #10 cf.const 10

# Scoreboard for dream rate attribute storage
scoreboard objectives add cf.luck dummy "Player Dream Rate x10"

# Scoreboard for unknown structure roll system
scoreboard objectives add cf.base_tier dummy "Base Tier (pre-roll)"

# Schedule refresh timer tick for looted markers (every 10 seconds)
schedule function evercraft:structures/storage/tick_refresh 200t
