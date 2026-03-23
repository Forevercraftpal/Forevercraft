# Farmer Contract consumed — set type and attempt hire
advancement revoke @s only evercraft:laborer/use_farmer
scoreboard players set @s ec.lb_hire_type 2
tag @s add ec.lb_restore
function evercraft:laborer/hire/on_use
