# Fisher Contract consumed — set type and attempt hire
advancement revoke @s only evercraft:laborer/use_fisher
scoreboard players set @s ec.lb_hire_type 3
tag @s add ec.lb_restore
function evercraft:laborer/hire/on_use
