# Tome of Experience — Reset cooldown (runs 3s after use)
# Revokes the advancement so the tome can be used again
execute as @a[tag=ec.tome_cooldown] run advancement revoke @s only evercraft:tome/used
tag @a[tag=ec.tome_cooldown] remove ec.tome_cooldown
