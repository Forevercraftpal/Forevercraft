# Chest Filler System - Initialize
# Per-player loot system - each player gets their own unique loot from structure chests
# Tiers: Common, Uncommon, Rare, Ornate, Exquisite

# Scoreboards for position tracking
scoreboard objectives add cf.pos_x dummy
scoreboard objectives add cf.pos_y dummy
scoreboard objectives add cf.pos_z dummy
scoreboard objectives add cf.tier dummy
scoreboard objectives add cf.struct_id dummy
scoreboard objectives add cf.temp dummy
scoreboard objectives add cf.bonus_roll dummy

# Timer for container cleanup
scoreboard objectives add cf.container_life dummy

# Track if chest has LootTable NBT (generated structure chest)
scoreboard objectives add cf.has_loottable dummy

# Mark as initialized
scoreboard players set chest_filler cf.init 1
