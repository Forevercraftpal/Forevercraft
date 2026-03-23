# Last Stand — End Invulnerability (scheduled 5 seconds after activation)
# Remove invulnerable flag from all buddy entities

execute as @e[tag=ec.bd_buddy,type=#evercraft:tameable_companions] if data entity @s {Invulnerable:1b} run data merge entity @s {Invulnerable:0b}
tag @a remove ec.bd_last_active
