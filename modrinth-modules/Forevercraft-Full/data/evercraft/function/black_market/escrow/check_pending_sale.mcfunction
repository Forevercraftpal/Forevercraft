# ============================================================
# Black Market — Check for Pending Sale Notification
# Called when player opens the GUI
# Shows notification if an item was sold and clears the flag
# ============================================================

# Build UUID key
execute store result storage eden:database black_market.temp.u0 int 1 run data get entity @s UUID[0]
execute store result storage eden:database black_market.temp.u1 int 1 run data get entity @s UUID[1]
execute store result storage eden:database black_market.temp.u2 int 1 run data get entity @s UUID[2]
execute store result storage eden:database black_market.temp.u3 int 1 run data get entity @s UUID[3]

# Check and clear via macro
function evercraft:black_market/escrow/check_pending_macro with storage eden:database black_market.temp
