# Reaper — Hunting Party Spawn Eligibility
# Run as villain player (infamy >= 1000, hunt_active=0) at player, overworld only

# Safe zone gates
execute if score @s hs.in_zone matches 1 run return 0
execute if score @s ec.guild_in_zone matches 1 run return 0
execute if entity @e[type=villager,distance=..48] run return 0

# Calculate days since last spawn using gametime
execute store result score #rp_now rp.temp run time query gametime

# Initialize hunt_last if never spawned (set to now so timer starts fresh)
execute unless score @s rp.hunt_last matches 1.. run scoreboard players operation @s rp.hunt_last = #rp_now rp.temp

# Elapsed ticks since last spawn
scoreboard players operation #rp_elapsed rp.temp = #rp_now rp.temp
scoreboard players operation #rp_elapsed rp.temp -= @s rp.hunt_last

# Convert to DayTime-equivalent days (72000 real ticks = 1 in-game day with slow daylight)
# But gametime runs in real ticks, so 72000 gametime ticks = 1 in-game day
# Minimum 2 days = 144000 ticks, Guarantee at 5 days = 360000 ticks

# Minimum wait: 2 days (144000 ticks) for low infamy, 1 day (72000) for high
execute if score @s rp.infamy matches 1000..2000 unless score #rp_elapsed rp.temp matches 144000.. run return 0
execute if score @s rp.infamy matches 2001..3500 unless score #rp_elapsed rp.temp matches 108000.. run return 0
execute if score @s rp.infamy matches 3501.. unless score #rp_elapsed rp.temp matches 72000.. run return 0

# Day 5 guarantee (360000 ticks): auto-spawn
execute if score #rp_elapsed rp.temp matches 360000.. run function evercraft:reaper/hunting_party/do_spawn
execute if score #rp_elapsed rp.temp matches 360000.. run return 0

# Random roll (1-100) — chance increases with infamy
execute store result score #rp_roll rp.temp run random value 1..100

# Infamy 1000-2000: 15% per check
execute if score @s rp.infamy matches 1000..2000 if score #rp_roll rp.temp matches 1..15 run function evercraft:reaper/hunting_party/do_spawn

# Infamy 2001-3500: 25% per check
execute if score @s rp.infamy matches 2001..3500 if score #rp_roll rp.temp matches 1..25 run function evercraft:reaper/hunting_party/do_spawn

# Infamy 3501+: 40% per check
execute if score @s rp.infamy matches 3501.. if score #rp_roll rp.temp matches 1..40 run function evercraft:reaper/hunting_party/do_spawn
