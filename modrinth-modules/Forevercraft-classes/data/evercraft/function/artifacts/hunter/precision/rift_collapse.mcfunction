# Rift — Collapse: execute burst at each rift marker location
# Called by schedule 80t after rift_create

# Execute burst at each rift marker, then kill it
execute as @e[type=marker,tag=ht_rift] at @s run function evercraft:artifacts/hunter/precision/rift_burst
kill @e[type=marker,tag=ht_rift]
