# Autumn Effects — 1s tick
# Leaf particles drifting down + warm ambient embers

# Falling leaves (cherry_leaves drift down naturally)
execute as @a at @s run particle cherry_leaves ~ ~4 ~ 8 3 8 0.01 3

# Warm ambient embers (very sparse, cozy feel)
execute as @a at @s run particle small_flame ~ ~1 ~ 10 2 10 0.001 1
