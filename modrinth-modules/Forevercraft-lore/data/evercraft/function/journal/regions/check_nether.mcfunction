# ============================================================
# Check Nether Region Completion
# Requires: All 5 nether biomes + 2 nether structures (Bastion + Fortress)
# Biomes: Nether Wastes(18), Crimson Forest(19), Warped Forest(20),
#          Basalt Deltas(21), Soul Sand Valley(22)
# Structures: Bastion Remnant(6), Nether Fortress(7)
# ============================================================

# Check all 5 nether biomes
execute unless entity @s[tag=jn.b18] run return fail
execute unless entity @s[tag=jn.b19] run return fail
execute unless entity @s[tag=jn.b20] run return fail
execute unless entity @s[tag=jn.b21] run return fail
execute unless entity @s[tag=jn.b22] run return fail

# Check 2 nether structures
execute unless score @s ec.struct_6 matches 1 run return fail
execute unless score @s ec.struct_7 matches 1 run return fail

# Region complete!
function evercraft:journal/regions/complete_nether
