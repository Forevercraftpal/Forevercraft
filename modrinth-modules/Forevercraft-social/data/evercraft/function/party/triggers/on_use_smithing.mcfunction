# Forge Bond — Advancement trigger handler
# Fires on any recipe craft — early-exit for non-party/non-blacksmith to minimize overhead
# Run as the player who crafted

# Revoke immediately for re-detection
advancement revoke @s only evercraft:party/triggers/use_smithing

# Quick bail for players not in a party or without Blacksmith 15+
execute unless score @s ec.party_id matches 1.. run return 0
execute unless score @s adv.blacksmith matches 15.. run return 0

# Call the Forge Bond combo (function does additional cooldown checks)
execute at @s run function evercraft:party/combos/forge_bond
