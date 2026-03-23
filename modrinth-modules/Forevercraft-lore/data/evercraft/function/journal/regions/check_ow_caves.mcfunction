# ============================================================
# Check Overworld Caves Region Completion
# Requires: All 3 cave biomes (Lush Caves, Dripstone Caves, Deep Dark)
# ============================================================

execute unless entity @s[tag=jn.b15] run return fail
execute unless entity @s[tag=jn.b16] run return fail
execute unless entity @s[tag=jn.b17] run return fail

# Region complete!
function evercraft:journal/regions/complete_ow_caves
