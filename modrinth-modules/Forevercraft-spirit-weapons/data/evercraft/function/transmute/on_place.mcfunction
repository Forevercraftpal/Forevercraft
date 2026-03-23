# Transmutation Stand — On Place
# Called by place_anvil advancement when player places the custom lodestone
# Run as: the player

# Revoke advancement for re-detection
advancement revoke @s only evercraft:transmute/place_anvil

# Try raycast from eye to find the placed lodestone
tag @s add ec.searching
scoreboard players set @s tx.temp 0
execute at @s anchored eyes run function evercraft:transmute/raycast_place

# Fallback: grid scan if raycast missed (oblique angles)
execute if entity @s[tag=ec.searching] at @s align xyz run function evercraft:util/scan_for_lodestone {setup_function:"evercraft:transmute/setup_anvil"}
