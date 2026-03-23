# Inscription Stone — Growth Spot (macro)
# Advances all crops by 1 stage in a 9x3x9 patch at random offset
# Fill order: high age → low age to prevent cascade (each crop advances once)

# Bone meal particles at the spot
$particle happy_villager ~$(gx) ~0.5 ~$(gz) 2 0.5 2 0 8

# Wheat (max age 7)
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 wheat[age=7] replace wheat[age=6]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 wheat[age=6] replace wheat[age=5]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 wheat[age=5] replace wheat[age=4]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 wheat[age=4] replace wheat[age=3]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 wheat[age=3] replace wheat[age=2]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 wheat[age=2] replace wheat[age=1]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 wheat[age=1] replace wheat[age=0]

# Carrots (max age 7)
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 carrots[age=7] replace carrots[age=6]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 carrots[age=6] replace carrots[age=5]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 carrots[age=5] replace carrots[age=4]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 carrots[age=4] replace carrots[age=3]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 carrots[age=3] replace carrots[age=2]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 carrots[age=2] replace carrots[age=1]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 carrots[age=1] replace carrots[age=0]

# Potatoes (max age 7)
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 potatoes[age=7] replace potatoes[age=6]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 potatoes[age=6] replace potatoes[age=5]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 potatoes[age=5] replace potatoes[age=4]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 potatoes[age=4] replace potatoes[age=3]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 potatoes[age=3] replace potatoes[age=2]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 potatoes[age=2] replace potatoes[age=1]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 potatoes[age=1] replace potatoes[age=0]

# Beetroots (max age 3)
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 beetroots[age=3] replace beetroots[age=2]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 beetroots[age=2] replace beetroots[age=1]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 beetroots[age=1] replace beetroots[age=0]

# Melon stems (max age 7)
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 melon_stem[age=7] replace melon_stem[age=6]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 melon_stem[age=6] replace melon_stem[age=5]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 melon_stem[age=5] replace melon_stem[age=4]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 melon_stem[age=4] replace melon_stem[age=3]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 melon_stem[age=3] replace melon_stem[age=2]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 melon_stem[age=2] replace melon_stem[age=1]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 melon_stem[age=1] replace melon_stem[age=0]

# Pumpkin stems (max age 7)
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pumpkin_stem[age=7] replace pumpkin_stem[age=6]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pumpkin_stem[age=6] replace pumpkin_stem[age=5]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pumpkin_stem[age=5] replace pumpkin_stem[age=4]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pumpkin_stem[age=4] replace pumpkin_stem[age=3]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pumpkin_stem[age=3] replace pumpkin_stem[age=2]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pumpkin_stem[age=2] replace pumpkin_stem[age=1]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pumpkin_stem[age=1] replace pumpkin_stem[age=0]

# Sweet berries (max age 3)
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 sweet_berry_bush[age=3] replace sweet_berry_bush[age=2]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 sweet_berry_bush[age=2] replace sweet_berry_bush[age=1]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 sweet_berry_bush[age=1] replace sweet_berry_bush[age=0]

# Torchflower crop (max age 1)
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 torchflower_crop[age=1] replace torchflower_crop[age=0]

# Pitcher crop (max age 4)
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pitcher_crop[age=4] replace pitcher_crop[age=3]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pitcher_crop[age=3] replace pitcher_crop[age=2]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pitcher_crop[age=2] replace pitcher_crop[age=1]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 pitcher_crop[age=1] replace pitcher_crop[age=0]

# Nether wart (max age 3)
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 nether_wart[age=3] replace nether_wart[age=2]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 nether_wart[age=2] replace nether_wart[age=1]
$execute positioned ~$(gx) ~-1 ~$(gz) run fill ~-4 ~0 ~-4 ~4 ~2 ~4 nether_wart[age=1] replace nether_wart[age=0]
