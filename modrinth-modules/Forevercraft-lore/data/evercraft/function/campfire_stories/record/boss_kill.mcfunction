# ============================================================
# Campfire Stories — Record Boss Kill
# Run as the player who killed the boss
# Stores player name + boss name to history
# ============================================================

# Get player name
data modify storage evercraft:campfire temp.player set from entity @s CustomName
execute store result storage evercraft:campfire temp.day int 1 run time query day

# Get boss name from storage (set by boss system before calling this)
# Fallback if not set
execute unless data storage evercraft:campfire temp.boss run data modify storage evercraft:campfire temp.boss set value "a fearsome boss"

# Append to history (max 50 entries)
data modify storage evercraft:campfire history append value {type:"boss_kill",player:"unknown",boss:"unknown",day:0}
data modify storage evercraft:campfire history[-1].player set from storage evercraft:campfire temp.player
data modify storage evercraft:campfire history[-1].boss set from storage evercraft:campfire temp.boss
data modify storage evercraft:campfire history[-1].day set from storage evercraft:campfire temp.day

# Trim if over 50
execute store result score #cf_count ec.var run data get storage evercraft:campfire history
execute if score #cf_count ec.var matches 51.. run data remove storage evercraft:campfire history[0]

# Achievement tracking: story recorded
scoreboard players add @s ach.cf_recorded 1
