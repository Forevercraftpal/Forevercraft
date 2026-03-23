# Create a temporary loot container for the player
# Uses an invisible armor stand holding a shulker box for GUI access
# Run as the player who opened the chest

# Get a safe position behind the player's feet
execute at @s positioned ^ ^ ^-1 run function evercraft:structures/container/place_temp_chest
