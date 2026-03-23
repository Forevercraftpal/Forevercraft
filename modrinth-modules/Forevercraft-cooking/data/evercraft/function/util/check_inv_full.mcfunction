# ============================================================
# Utility: Check if player's main inventory is completely full
# Returns 1 if all 36 slots (hotbar + inventory) are occupied
# Returns 0 if any slot is empty (has space for items)
# Run as: the player to check
# ============================================================

# Hotbar (hotbar.0-8) — check these first since players often have space here
execute unless items entity @s hotbar.0 * run return 0
execute unless items entity @s hotbar.1 * run return 0
execute unless items entity @s hotbar.2 * run return 0
execute unless items entity @s hotbar.3 * run return 0
execute unless items entity @s hotbar.4 * run return 0
execute unless items entity @s hotbar.5 * run return 0
execute unless items entity @s hotbar.6 * run return 0
execute unless items entity @s hotbar.7 * run return 0
execute unless items entity @s hotbar.8 * run return 0

# Main inventory (inventory.0-26)
execute unless items entity @s inventory.0 * run return 0
execute unless items entity @s inventory.1 * run return 0
execute unless items entity @s inventory.2 * run return 0
execute unless items entity @s inventory.3 * run return 0
execute unless items entity @s inventory.4 * run return 0
execute unless items entity @s inventory.5 * run return 0
execute unless items entity @s inventory.6 * run return 0
execute unless items entity @s inventory.7 * run return 0
execute unless items entity @s inventory.8 * run return 0
execute unless items entity @s inventory.9 * run return 0
execute unless items entity @s inventory.10 * run return 0
execute unless items entity @s inventory.11 * run return 0
execute unless items entity @s inventory.12 * run return 0
execute unless items entity @s inventory.13 * run return 0
execute unless items entity @s inventory.14 * run return 0
execute unless items entity @s inventory.15 * run return 0
execute unless items entity @s inventory.16 * run return 0
execute unless items entity @s inventory.17 * run return 0
execute unless items entity @s inventory.18 * run return 0
execute unless items entity @s inventory.19 * run return 0
execute unless items entity @s inventory.20 * run return 0
execute unless items entity @s inventory.21 * run return 0
execute unless items entity @s inventory.22 * run return 0
execute unless items entity @s inventory.23 * run return 0
execute unless items entity @s inventory.24 * run return 0
execute unless items entity @s inventory.25 * run return 0
execute unless items entity @s inventory.26 * run return 0

# All 36 slots occupied — inventory is full
return 1
