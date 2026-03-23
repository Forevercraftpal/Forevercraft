# Reaper — Check if this player's bandits are still alive
# Run as player with rp.band_active=1

execute store result score #rp_count rp.temp if entity @e[tag=rp.bandit]

execute if score #rp_count rp.temp matches 0 run function evercraft:reaper/bandits/on_all_dead
