# Reaper — Bandit Spawn Eligibility
# Run as peacemonger player (renown >= 1000, band_active=0) at player, overworld only

# Safe zone gates
execute if score @s hs.in_zone matches 1 run return 0
execute if score @s ec.guild_in_zone matches 1 run return 0
execute if entity @e[type=villager,distance=..48] run return 0

# Calculate days since last spawn using gametime
execute store result score #rp_now rp.temp run time query gametime

# Initialize band_last if never spawned
execute unless score @s rp.band_last matches 1.. run scoreboard players operation @s rp.band_last = #rp_now rp.temp

# Elapsed ticks since last spawn
scoreboard players operation #rp_elapsed rp.temp = #rp_now rp.temp
scoreboard players operation #rp_elapsed rp.temp -= @s rp.band_last

# Minimum wait scales with renown (same pattern as hunting parties)
execute if score @s rp.renown matches 1000..2000 unless score #rp_elapsed rp.temp matches 144000.. run return 0
execute if score @s rp.renown matches 2001..3500 unless score #rp_elapsed rp.temp matches 108000.. run return 0
execute if score @s rp.renown matches 3501.. unless score #rp_elapsed rp.temp matches 72000.. run return 0

# Day 5 guarantee (360000 ticks): auto-spawn
execute if score #rp_elapsed rp.temp matches 360000.. run function evercraft:reaper/bandits/do_spawn
execute if score #rp_elapsed rp.temp matches 360000.. run return 0

# Random roll — chance increases with renown
execute store result score #rp_roll rp.temp run random value 1..100

execute if score @s rp.renown matches 1000..2000 if score #rp_roll rp.temp matches 1..15 run function evercraft:reaper/bandits/do_spawn
execute if score @s rp.renown matches 2001..3500 if score #rp_roll rp.temp matches 1..25 run function evercraft:reaper/bandits/do_spawn
execute if score @s rp.renown matches 3501.. if score #rp_roll rp.temp matches 1..40 run function evercraft:reaper/bandits/do_spawn
