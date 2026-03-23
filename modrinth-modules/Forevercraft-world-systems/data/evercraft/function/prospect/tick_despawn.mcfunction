# Ore Node: Check node lifetimes (every 5 seconds)
schedule function evercraft:prospect/tick_despawn 100t

execute as @e[type=marker,tag=ec.prospect_data] run function evercraft:prospect/check_despawn
