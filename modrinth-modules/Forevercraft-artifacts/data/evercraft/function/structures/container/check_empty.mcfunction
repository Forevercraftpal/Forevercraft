# Check if the barrel container is empty
# Run at the marker position (should be at barrel)

# Get item count in barrel - if all slots empty, remove
execute store result score #items cf.temp run data get block ~ ~ ~ Items
execute if score #items cf.temp matches 0 run function evercraft:structures/container/remove
