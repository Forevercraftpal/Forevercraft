# Reaper — Check if this player's hunting party is still alive
# Run as player with rp.hunt_active=1

# Check if any hunter with our owner ID still exists
execute store result score #rp_count rp.temp if entity @e[tag=rp.hunter]

# If none remain, party is defeated
execute if score #rp_count rp.temp matches 0 run function evercraft:reaper/hunting_party/on_all_dead
