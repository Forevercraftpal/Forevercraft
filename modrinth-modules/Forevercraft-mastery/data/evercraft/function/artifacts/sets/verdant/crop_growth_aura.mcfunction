# Grove Full Set (4pc) — Crop Growth Aura
# Doubles crop growth speed in 32-block radius
# Runs every 1s (via check_tick schedule), ~1/3 chance per call
# Advances crops by one growth stage in the area

# ~1/3 chance per second = roughly doubles vanilla crop growth speed
execute store result score #rand ec.var run random value 1..3
execute unless score #rand ec.var matches 1 run return 0

# Advance crops by one stage in 32-block radius (Y range -1 to +2 for farmland level)
# 65 x 65 x 4 = 16900 blocks per fill (under 32768 limit)

# Wheat (max age 7)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 wheat[age=7] replace wheat[age=6]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 wheat[age=6] replace wheat[age=5]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 wheat[age=5] replace wheat[age=4]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 wheat[age=4] replace wheat[age=3]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 wheat[age=3] replace wheat[age=2]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 wheat[age=2] replace wheat[age=1]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 wheat[age=1] replace wheat[age=0]

# Carrots (max age 7)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 carrots[age=7] replace carrots[age=6]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 carrots[age=6] replace carrots[age=5]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 carrots[age=5] replace carrots[age=4]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 carrots[age=4] replace carrots[age=3]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 carrots[age=3] replace carrots[age=2]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 carrots[age=2] replace carrots[age=1]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 carrots[age=1] replace carrots[age=0]

# Potatoes (max age 7)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 potatoes[age=7] replace potatoes[age=6]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 potatoes[age=6] replace potatoes[age=5]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 potatoes[age=5] replace potatoes[age=4]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 potatoes[age=4] replace potatoes[age=3]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 potatoes[age=3] replace potatoes[age=2]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 potatoes[age=2] replace potatoes[age=1]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 potatoes[age=1] replace potatoes[age=0]

# Beetroots (max age 3)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 beetroots[age=3] replace beetroots[age=2]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 beetroots[age=2] replace beetroots[age=1]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 beetroots[age=1] replace beetroots[age=0]

# Melon stems (max age 7)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 melon_stem[age=7] replace melon_stem[age=6]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 melon_stem[age=6] replace melon_stem[age=5]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 melon_stem[age=5] replace melon_stem[age=4]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 melon_stem[age=4] replace melon_stem[age=3]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 melon_stem[age=3] replace melon_stem[age=2]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 melon_stem[age=2] replace melon_stem[age=1]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 melon_stem[age=1] replace melon_stem[age=0]

# Pumpkin stems (max age 7)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pumpkin_stem[age=7] replace pumpkin_stem[age=6]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pumpkin_stem[age=6] replace pumpkin_stem[age=5]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pumpkin_stem[age=5] replace pumpkin_stem[age=4]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pumpkin_stem[age=4] replace pumpkin_stem[age=3]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pumpkin_stem[age=3] replace pumpkin_stem[age=2]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pumpkin_stem[age=2] replace pumpkin_stem[age=1]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pumpkin_stem[age=1] replace pumpkin_stem[age=0]

# Nether wart (max age 3)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 nether_wart[age=3] replace nether_wart[age=2]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 nether_wart[age=2] replace nether_wart[age=1]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 nether_wart[age=1] replace nether_wart[age=0]

# Sweet berry bush (max age 3)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 sweet_berry_bush[age=3] replace sweet_berry_bush[age=2]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 sweet_berry_bush[age=2] replace sweet_berry_bush[age=1]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 sweet_berry_bush[age=1] replace sweet_berry_bush[age=0]

# Torchflower crop (max age 1)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 torchflower_crop[age=1] replace torchflower_crop[age=0]

# Pitcher crop (max age 4, has half=lower/upper)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pitcher_crop[half=lower,age=4] replace pitcher_crop[half=lower,age=3]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pitcher_crop[half=lower,age=3] replace pitcher_crop[half=lower,age=2]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pitcher_crop[half=lower,age=2] replace pitcher_crop[half=lower,age=1]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 pitcher_crop[half=lower,age=1] replace pitcher_crop[half=lower,age=0]

# Cocoa beans (max age 2, all facings)
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 cocoa[age=2,facing=north] replace cocoa[age=1,facing=north]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 cocoa[age=1,facing=north] replace cocoa[age=0,facing=north]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 cocoa[age=2,facing=south] replace cocoa[age=1,facing=south]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 cocoa[age=1,facing=south] replace cocoa[age=0,facing=south]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 cocoa[age=2,facing=east] replace cocoa[age=1,facing=east]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 cocoa[age=1,facing=east] replace cocoa[age=0,facing=east]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 cocoa[age=2,facing=west] replace cocoa[age=1,facing=west]
fill ~-32 ~-1 ~-32 ~32 ~2 ~32 cocoa[age=1,facing=west] replace cocoa[age=0,facing=west]

# Subtle particle feedback
particle happy_villager ~ ~0.5 ~ 2 0.5 2 0.02 3
