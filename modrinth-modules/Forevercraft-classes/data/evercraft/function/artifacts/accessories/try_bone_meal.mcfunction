# Try to bone meal a random crop nearby
# Called positioned ~-4 ~-1 ~-4 from crop_boost (already offset)
# Scans 9x3x9 area from positioned origin

# Pick random offset within the area
execute store result storage evercraft:temp crop.x int 1 run random value 0..8
execute store result storage evercraft:temp crop.z int 1 run random value 0..8

# Call macro to position and grow
function evercraft:artifacts/accessories/try_bone_meal_at with storage evercraft:temp crop
