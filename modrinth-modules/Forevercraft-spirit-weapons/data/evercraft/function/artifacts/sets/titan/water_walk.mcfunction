# Water walking ability for Titan's Shroud 4pc
# Places barrier blocks under player when walking on water

# Cleanup: remove old barriers within 4 blocks (replaces broken distance-based cleanup)
execute at @s run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 water replace barrier

# Place barrier under player when above water surface
execute at @s if block ~ ~-0.1 ~ water if block ~ ~ ~ air run setblock ~ ~-0.1 ~ barrier
