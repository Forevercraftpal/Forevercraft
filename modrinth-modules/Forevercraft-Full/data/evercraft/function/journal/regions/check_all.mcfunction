# ============================================================
# Check All Regions for Completion
# Run as player after any discovery event
# ============================================================

# Only check incomplete regions
execute if score @s jn.region_ow matches 0 run function evercraft:journal/regions/check_ow_surface
execute if score @s jn.region_cave matches 0 run function evercraft:journal/regions/check_ow_caves
execute if score @s jn.region_neth matches 0 run function evercraft:journal/regions/check_nether
execute if score @s jn.region_end matches 0 run function evercraft:journal/regions/check_end
