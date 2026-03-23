# Tempest — Apply poison and wither in impact zone
# Runs 10 ticks after arrow volley (after arrows land)
# Marker is 10 blocks above ground; apply effects at ground level

# Apply poison (5s) and wither (5s) to enemies in 6-block radius at ground level
execute as @e[type=marker,tag=ec.ar_tempest,limit=1] at @s positioned ~ ~-10 ~ run effect give @e[type=!player,distance=..6] poison 100 0 false
execute as @e[type=marker,tag=ec.ar_tempest,limit=1] at @s positioned ~ ~-10 ~ run effect give @e[type=!player,distance=..6] wither 100 0 false

# Toxic cloud particles at ground level
execute as @e[type=marker,tag=ec.ar_tempest,limit=1] at @s run particle item_slime ~ ~-9 ~ 6 1 6 0.02 30

# Clean up marker
kill @e[type=marker,tag=ec.ar_tempest]
