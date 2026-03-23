# Foraging Bush: Check bush lifetimes (every 5 seconds)
schedule function evercraft:forage/tick_despawn 100t

execute as @e[type=marker,tag=ec.forage_data] run function evercraft:forage/check_despawn
