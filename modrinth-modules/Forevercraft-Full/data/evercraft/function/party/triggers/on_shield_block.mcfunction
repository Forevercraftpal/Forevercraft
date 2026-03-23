# Shield Wall — Advancement trigger handler
# Fires when player blocks a hit with shield
# Run as the player who blocked

# Revoke immediately for re-detection
advancement revoke @s only evercraft:party/triggers/shield_block

# Call the Shield Wall combo (function does its own party/level/cooldown checks)
execute at @s run function evercraft:party/combos/shield_wall

# Shield artifact on-block passive (tier-scaled effect)
function evercraft:artifacts/shields/on_block

# Javelin Hoplite — Counter Thrust window on shield block
function evercraft:artifacts/javelin/hoplite_counter

# Spirit Bulwark Shield — trigger abilities on block
execute if entity @s[tag=ec.sp_active] if score @s ec.sp_weapon matches 13 run function evercraft:spirit/abilities/bulwark_shield/on_block
