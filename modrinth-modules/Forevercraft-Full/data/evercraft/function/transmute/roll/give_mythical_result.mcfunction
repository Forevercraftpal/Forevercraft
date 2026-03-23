# Artifact Transmutation — Mythical Reroll
# Run as: player
# Rolls a random mythical from the transmute pool, excluding the two deposited artifacts
# Uses pre/post inventory count to detect and reroll duplicates

# Pre-count: how many of each deposited artifact does the player already have?
function evercraft:transmute/roll/mythical_precount with storage evercraft:transmute temp

# Roll from weighted pool (Dragon Fan ~0.1%, all others equal)
loot give @s loot evercraft:artifacts/mythical/transmute

# Post-check: if the rolled artifact matches a deposited one, clear it and reroll
function evercraft:transmute/roll/mythical_postcheck with storage evercraft:transmute temp
