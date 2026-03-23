# Firebrand — Earthshatter hit on individual entity
# Run as @s (the target mob) at @s

# 12 base damage, scaled by effectiveness (eff pre-stored in ability1.mcfunction)
function evercraft:spirit/abilities/scaled_damage with storage evercraft:temp sp_dmg

# Launch upward
data modify entity @s Motion set value [0.0d, 1.5d, 0.0d]

# Apply Slowness II for 5 seconds (cracked earth zone effect)
effect give @s slowness 5 1
