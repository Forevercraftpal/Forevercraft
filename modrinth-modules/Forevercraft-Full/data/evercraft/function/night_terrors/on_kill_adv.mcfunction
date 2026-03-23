# Night Terror kill detected via advancement
# Revoke for re-trigger and call main on_death handler
advancement revoke @s only evercraft:night_terrors/kill
execute if score @s ec.nt_active matches 1.. run function evercraft:night_terrors/on_death
