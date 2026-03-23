# Guidestone Menu — Absorb Ancient Netherite Core to prime this guidestone
# Run as: the prime_btn interaction entity
# Checks player inventory/hand for an unawakened core, consumes it, and primes

# Clear interaction data
data remove entity @s interaction

# Find the player in the menu
execute as @a[tag=ec.gs_in_menu,distance=..5,limit=1,sort=nearest] run function evercraft:guidestone/menu/absorb_core_exec
