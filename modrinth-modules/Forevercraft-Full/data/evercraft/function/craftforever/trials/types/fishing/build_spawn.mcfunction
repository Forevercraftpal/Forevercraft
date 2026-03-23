# Fishing Trial — Dock platform at center
# Macro file — run with storage evercraft:trials

# Oak plank dock base (9x1x9 at Y=300)
$execute positioned $(ax) 300 $(az) run fill ~20 ~ ~20 ~28 ~ ~28 oak_planks

# Fence railing around edges (at Y=301)
$execute positioned $(ax) 301 $(az) run fill ~22 ~ ~22 ~26 ~ ~26 oak_fence

# Fill inner fence area back to planks so railing is only on edges
$execute positioned $(ax) 300 $(az) run fill ~22 ~ ~22 ~26 ~ ~26 oak_planks
