# ============================================================
# Check End Region Completion
# Requires: End biome (23) + End City structure (2)
# ============================================================

execute unless entity @s[tag=jn.b23] run return fail
execute unless score @s ec.struct_2 matches 1 run return fail

# Region complete!
function evercraft:journal/regions/complete_end
