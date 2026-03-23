# Best Buddy Combat — Apply Weapon Bonus
# @s = player who owns the best buddy
# If best buddy has a weapon stored, deal bonus damage based on weapon tier

# Check if weapon is equipped (stored in storage)
execute unless data storage evercraft:buddy temp_equip.weapon run return fail

# Weapon tiers: Common=+2, Uncommon=+3, Rare=+4, Ornate=+5, Exquisite=+7, Mythical=+10
# For now, flat +4 bonus damage (will be refined with full weapon integration in Phase 5 GUI)
# The weapon ability trigger will also be wired here when equipment GUI is built

# Bonus damage to the target (already damaged by base 4 in attack.mcfunction)
# Find the hostile that was just attacked (has recent damage indicator)
# For simplicity, the weapon bonus is already factored into War Companion's +50%
# Full weapon scaling will be implemented when equipment slots are in the GUI
