# Farmer's Almanac - Grow a crop at current position
# Advances crop age by 1 stage (simulates bone meal)
# Uses return run to stop after first successful growth

# Wheat (max age 7)
execute if block ~ ~ ~ minecraft:wheat[age=0] run return run setblock ~ ~ ~ minecraft:wheat[age=1]
execute if block ~ ~ ~ minecraft:wheat[age=1] run return run setblock ~ ~ ~ minecraft:wheat[age=2]
execute if block ~ ~ ~ minecraft:wheat[age=2] run return run setblock ~ ~ ~ minecraft:wheat[age=3]
execute if block ~ ~ ~ minecraft:wheat[age=3] run return run setblock ~ ~ ~ minecraft:wheat[age=4]
execute if block ~ ~ ~ minecraft:wheat[age=4] run return run setblock ~ ~ ~ minecraft:wheat[age=5]
execute if block ~ ~ ~ minecraft:wheat[age=5] run return run setblock ~ ~ ~ minecraft:wheat[age=6]
execute if block ~ ~ ~ minecraft:wheat[age=6] run return run setblock ~ ~ ~ minecraft:wheat[age=7]

# Carrots (max age 7)
execute if block ~ ~ ~ minecraft:carrots[age=0] run return run setblock ~ ~ ~ minecraft:carrots[age=1]
execute if block ~ ~ ~ minecraft:carrots[age=1] run return run setblock ~ ~ ~ minecraft:carrots[age=2]
execute if block ~ ~ ~ minecraft:carrots[age=2] run return run setblock ~ ~ ~ minecraft:carrots[age=3]
execute if block ~ ~ ~ minecraft:carrots[age=3] run return run setblock ~ ~ ~ minecraft:carrots[age=4]
execute if block ~ ~ ~ minecraft:carrots[age=4] run return run setblock ~ ~ ~ minecraft:carrots[age=5]
execute if block ~ ~ ~ minecraft:carrots[age=5] run return run setblock ~ ~ ~ minecraft:carrots[age=6]
execute if block ~ ~ ~ minecraft:carrots[age=6] run return run setblock ~ ~ ~ minecraft:carrots[age=7]

# Potatoes (max age 7)
execute if block ~ ~ ~ minecraft:potatoes[age=0] run return run setblock ~ ~ ~ minecraft:potatoes[age=1]
execute if block ~ ~ ~ minecraft:potatoes[age=1] run return run setblock ~ ~ ~ minecraft:potatoes[age=2]
execute if block ~ ~ ~ minecraft:potatoes[age=2] run return run setblock ~ ~ ~ minecraft:potatoes[age=3]
execute if block ~ ~ ~ minecraft:potatoes[age=3] run return run setblock ~ ~ ~ minecraft:potatoes[age=4]
execute if block ~ ~ ~ minecraft:potatoes[age=4] run return run setblock ~ ~ ~ minecraft:potatoes[age=5]
execute if block ~ ~ ~ minecraft:potatoes[age=5] run return run setblock ~ ~ ~ minecraft:potatoes[age=6]
execute if block ~ ~ ~ minecraft:potatoes[age=6] run return run setblock ~ ~ ~ minecraft:potatoes[age=7]

# Beetroots (max age 3)
execute if block ~ ~ ~ minecraft:beetroots[age=0] run return run setblock ~ ~ ~ minecraft:beetroots[age=1]
execute if block ~ ~ ~ minecraft:beetroots[age=1] run return run setblock ~ ~ ~ minecraft:beetroots[age=2]
execute if block ~ ~ ~ minecraft:beetroots[age=2] run return run setblock ~ ~ ~ minecraft:beetroots[age=3]

# Nether Wart (max age 3)
execute if block ~ ~ ~ minecraft:nether_wart[age=0] run return run setblock ~ ~ ~ minecraft:nether_wart[age=1]
execute if block ~ ~ ~ minecraft:nether_wart[age=1] run return run setblock ~ ~ ~ minecraft:nether_wart[age=2]
execute if block ~ ~ ~ minecraft:nether_wart[age=2] run return run setblock ~ ~ ~ minecraft:nether_wart[age=3]

# Sweet Berry Bush (max age 3)
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=0] run return run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1]
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=1] run return run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=2]
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=2] run return run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=3]

# Melon Stem (max age 7)
execute if block ~ ~ ~ minecraft:melon_stem[age=0] run return run setblock ~ ~ ~ minecraft:melon_stem[age=1]
execute if block ~ ~ ~ minecraft:melon_stem[age=1] run return run setblock ~ ~ ~ minecraft:melon_stem[age=2]
execute if block ~ ~ ~ minecraft:melon_stem[age=2] run return run setblock ~ ~ ~ minecraft:melon_stem[age=3]
execute if block ~ ~ ~ minecraft:melon_stem[age=3] run return run setblock ~ ~ ~ minecraft:melon_stem[age=4]
execute if block ~ ~ ~ minecraft:melon_stem[age=4] run return run setblock ~ ~ ~ minecraft:melon_stem[age=5]
execute if block ~ ~ ~ minecraft:melon_stem[age=5] run return run setblock ~ ~ ~ minecraft:melon_stem[age=6]
execute if block ~ ~ ~ minecraft:melon_stem[age=6] run return run setblock ~ ~ ~ minecraft:melon_stem[age=7]

# Pumpkin Stem (max age 7)
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=0] run return run setblock ~ ~ ~ minecraft:pumpkin_stem[age=1]
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=1] run return run setblock ~ ~ ~ minecraft:pumpkin_stem[age=2]
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=2] run return run setblock ~ ~ ~ minecraft:pumpkin_stem[age=3]
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=3] run return run setblock ~ ~ ~ minecraft:pumpkin_stem[age=4]
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=4] run return run setblock ~ ~ ~ minecraft:pumpkin_stem[age=5]
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=5] run return run setblock ~ ~ ~ minecraft:pumpkin_stem[age=6]
execute if block ~ ~ ~ minecraft:pumpkin_stem[age=6] run return run setblock ~ ~ ~ minecraft:pumpkin_stem[age=7]

# Torchflower Crop (max age 1)
execute if block ~ ~ ~ minecraft:torchflower_crop[age=0] run return run setblock ~ ~ ~ minecraft:torchflower_crop[age=1]

# Pitcher Crop (max age 4)
execute if block ~ ~ ~ minecraft:pitcher_crop[age=0] run return run setblock ~ ~ ~ minecraft:pitcher_crop[age=1]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=1] run return run setblock ~ ~ ~ minecraft:pitcher_crop[age=2]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=2] run return run setblock ~ ~ ~ minecraft:pitcher_crop[age=3]
execute if block ~ ~ ~ minecraft:pitcher_crop[age=3] run return run setblock ~ ~ ~ minecraft:pitcher_crop[age=4]
