# Forager Contract consumed — set type and attempt hire
advancement revoke @s only evercraft:laborer/use_forager
scoreboard players set @s ec.lb_hire_type 5
tag @s add ec.lb_restore
function evercraft:laborer/hire/on_use
