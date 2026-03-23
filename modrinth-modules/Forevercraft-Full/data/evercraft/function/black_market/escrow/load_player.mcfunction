# ============================================================
# Black Market — Load Player Escrow Data
# Loads listing count and balance from storage into scoreboards
# Run as: player
# ============================================================

# Get player UUID as array for macro key
data modify storage eden:database black_market.temp.uuid set from entity @s UUID

# Build the storage key from UUID components
execute store result storage eden:database black_market.temp.u0 int 1 run data get entity @s UUID[0]
execute store result storage eden:database black_market.temp.u1 int 1 run data get entity @s UUID[1]
execute store result storage eden:database black_market.temp.u2 int 1 run data get entity @s UUID[2]
execute store result storage eden:database black_market.temp.u3 int 1 run data get entity @s UUID[3]

# Load via macro (creates path if not existing)
function evercraft:black_market/escrow/load_player_macro with storage eden:database black_market.temp
