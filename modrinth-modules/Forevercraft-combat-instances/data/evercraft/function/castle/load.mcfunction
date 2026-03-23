# Infinite Castle — Load
# Called from init.mcfunction on datapack load

# Per-player record (highest floor ever reached)
scoreboard objectives add ic.record dummy "Castle Record Floor"

# Death detection
scoreboard objectives add ic.deaths deathCount "Castle Deaths"

# Daily run limit (3 per day)
scoreboard objectives add ic.today dummy "Castle Runs Today"
scoreboard objectives add ic.last_day dummy "Castle Last Day"

# Highest milestone floor claimed (milestone loot is one-time only)
scoreboard objectives add ic.claimed dummy "Castle Milestones Claimed"

# Crate coins (accumulated during run, tallied at end)
scoreboard objectives add ic.coins dummy "Castle Crate Coins"

# Skip floor timer trigger
scoreboard objectives add ec.ic_skip trigger "Castle Skip Timer"
scoreboard players enable @a ec.ic_skip

# Constants (ensure they exist)
scoreboard players set #2 ec.const 2
scoreboard players set #3 ec.const 3
scoreboard players set #5 ec.const 5
scoreboard players set #10 ec.const 10
scoreboard players set #50 ec.const 50

# Initialize global state
execute unless score #ic_active ec.var matches 0.. run scoreboard players set #ic_active ec.var 0

# Title team: "Lord" (gold, bold)
team add ic.t_lord
team modify ic.t_lord prefix {"text":"Lord ","color":"gold","bold":true}
team modify ic.t_lord color gold
