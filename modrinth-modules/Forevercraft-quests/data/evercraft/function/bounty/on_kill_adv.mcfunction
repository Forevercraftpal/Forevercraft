# Bounty kill detected via advancement
advancement revoke @s only evercraft:bounty/kill
execute if score @s ec.bnt_spawned matches 1 run function evercraft:bounty/on_kill
