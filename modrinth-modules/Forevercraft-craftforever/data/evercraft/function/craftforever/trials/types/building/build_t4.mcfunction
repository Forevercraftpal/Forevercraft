# Building T4: Match a Display — small reference structure to copy
# Player places 200 blocks to replicate/build around it

# Build a small 5x5x5 reference cube out of bricks (display model)
$execute positioned $(ax) 300 $(az) run fill ~5 ~ ~5 ~9 ~4 ~9 bricks

# Sign post (use a sign-like marker)
$execute positioned $(ax) 300 $(az) run setblock ~7 ~5 ~7 torch
