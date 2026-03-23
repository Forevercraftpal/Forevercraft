# ============================================================
# Black Market — Update Netherite Display
# Shows the player's current netherite ingot count
# ============================================================

# Count netherite without removing
execute store result score #bm_neth ec.bm_temp run clear @s netherite_ingot 0

# Write count to storage for macro
execute store result storage eden:database black_market.temp.neth_count int 1 run scoreboard players get #bm_neth ec.bm_temp

# Update text_display via macro
function evercraft:black_market/gui/update_netherite_macro with storage eden:database black_market.temp
