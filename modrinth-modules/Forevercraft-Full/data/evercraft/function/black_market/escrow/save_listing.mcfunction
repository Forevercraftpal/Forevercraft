# ============================================================
# Black Market — Save Listing to Escrow
# Appends the item in temp.escrow_item to the player's escrow
# Run as: player
# ============================================================

# Build UUID key
execute store result storage eden:database black_market.temp.u0 int 1 run data get entity @s UUID[0]
execute store result storage eden:database black_market.temp.u1 int 1 run data get entity @s UUID[1]
execute store result storage eden:database black_market.temp.u2 int 1 run data get entity @s UUID[2]
execute store result storage eden:database black_market.temp.u3 int 1 run data get entity @s UUID[3]

# Save via macro
function evercraft:black_market/escrow/save_listing_macro with storage eden:database black_market.temp
