# Housing Garden — Grow a Crop Block
# Run positioned at the crop block location
# Advances crop age by 1 stage

# Wheat (age 0-7)
execute if block ~ ~ ~ wheat[age=0] run setblock ~ ~ ~ wheat[age=1]
execute if block ~ ~ ~ wheat[age=1] run setblock ~ ~ ~ wheat[age=2]
execute if block ~ ~ ~ wheat[age=2] run setblock ~ ~ ~ wheat[age=3]
execute if block ~ ~ ~ wheat[age=3] run setblock ~ ~ ~ wheat[age=4]
execute if block ~ ~ ~ wheat[age=4] run setblock ~ ~ ~ wheat[age=5]
execute if block ~ ~ ~ wheat[age=5] run setblock ~ ~ ~ wheat[age=6]
execute if block ~ ~ ~ wheat[age=6] run setblock ~ ~ ~ wheat[age=7]

# Carrots (age 0-7)
execute if block ~ ~ ~ carrots[age=0] run setblock ~ ~ ~ carrots[age=1]
execute if block ~ ~ ~ carrots[age=1] run setblock ~ ~ ~ carrots[age=2]
execute if block ~ ~ ~ carrots[age=2] run setblock ~ ~ ~ carrots[age=3]
execute if block ~ ~ ~ carrots[age=3] run setblock ~ ~ ~ carrots[age=4]
execute if block ~ ~ ~ carrots[age=4] run setblock ~ ~ ~ carrots[age=5]
execute if block ~ ~ ~ carrots[age=5] run setblock ~ ~ ~ carrots[age=6]
execute if block ~ ~ ~ carrots[age=6] run setblock ~ ~ ~ carrots[age=7]

# Potatoes (age 0-7)
execute if block ~ ~ ~ potatoes[age=0] run setblock ~ ~ ~ potatoes[age=1]
execute if block ~ ~ ~ potatoes[age=1] run setblock ~ ~ ~ potatoes[age=2]
execute if block ~ ~ ~ potatoes[age=2] run setblock ~ ~ ~ potatoes[age=3]
execute if block ~ ~ ~ potatoes[age=3] run setblock ~ ~ ~ potatoes[age=4]
execute if block ~ ~ ~ potatoes[age=4] run setblock ~ ~ ~ potatoes[age=5]
execute if block ~ ~ ~ potatoes[age=5] run setblock ~ ~ ~ potatoes[age=6]
execute if block ~ ~ ~ potatoes[age=6] run setblock ~ ~ ~ potatoes[age=7]

# Beetroot (age 0-3)
execute if block ~ ~ ~ beetroots[age=0] run setblock ~ ~ ~ beetroots[age=1]
execute if block ~ ~ ~ beetroots[age=1] run setblock ~ ~ ~ beetroots[age=2]
execute if block ~ ~ ~ beetroots[age=2] run setblock ~ ~ ~ beetroots[age=3]

# Nether Wart (age 0-3)
execute if block ~ ~ ~ nether_wart[age=0] run setblock ~ ~ ~ nether_wart[age=1]
execute if block ~ ~ ~ nether_wart[age=1] run setblock ~ ~ ~ nether_wart[age=2]
execute if block ~ ~ ~ nether_wart[age=2] run setblock ~ ~ ~ nether_wart[age=3]

# Melon/Pumpkin Stems (age 0-7)
execute if block ~ ~ ~ melon_stem[age=0] run setblock ~ ~ ~ melon_stem[age=1]
execute if block ~ ~ ~ melon_stem[age=1] run setblock ~ ~ ~ melon_stem[age=2]
execute if block ~ ~ ~ melon_stem[age=2] run setblock ~ ~ ~ melon_stem[age=3]
execute if block ~ ~ ~ melon_stem[age=3] run setblock ~ ~ ~ melon_stem[age=4]
execute if block ~ ~ ~ melon_stem[age=4] run setblock ~ ~ ~ melon_stem[age=5]
execute if block ~ ~ ~ melon_stem[age=5] run setblock ~ ~ ~ melon_stem[age=6]
execute if block ~ ~ ~ melon_stem[age=6] run setblock ~ ~ ~ melon_stem[age=7]

execute if block ~ ~ ~ pumpkin_stem[age=0] run setblock ~ ~ ~ pumpkin_stem[age=1]
execute if block ~ ~ ~ pumpkin_stem[age=1] run setblock ~ ~ ~ pumpkin_stem[age=2]
execute if block ~ ~ ~ pumpkin_stem[age=2] run setblock ~ ~ ~ pumpkin_stem[age=3]
execute if block ~ ~ ~ pumpkin_stem[age=3] run setblock ~ ~ ~ pumpkin_stem[age=4]
execute if block ~ ~ ~ pumpkin_stem[age=4] run setblock ~ ~ ~ pumpkin_stem[age=5]
execute if block ~ ~ ~ pumpkin_stem[age=5] run setblock ~ ~ ~ pumpkin_stem[age=6]
execute if block ~ ~ ~ pumpkin_stem[age=6] run setblock ~ ~ ~ pumpkin_stem[age=7]

# Sweet berries (age 0-3)
execute if block ~ ~ ~ sweet_berry_bush[age=0] run setblock ~ ~ ~ sweet_berry_bush[age=1]
execute if block ~ ~ ~ sweet_berry_bush[age=1] run setblock ~ ~ ~ sweet_berry_bush[age=2]
execute if block ~ ~ ~ sweet_berry_bush[age=2] run setblock ~ ~ ~ sweet_berry_bush[age=3]

# Subtle growth particle
particle minecraft:happy_villager ~ ~0.3 ~ 0.2 0.2 0.2 0 3
