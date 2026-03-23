# Stealth — Consolidated per-player tick
# OPT: Was 4 separate @a[stealth] scans — now 1 per-player dispatch
# Handles: sneak speed, P2 backstab, P1 invisibility

execute if predicate evercraft:advantage/is_sneaking run function evercraft:advantage/effects/stealth_apply
execute unless predicate evercraft:advantage/is_sneaking run attribute @s movement_speed modifier remove evercraft:adv_stealth
execute if score @s adv.pres_stea matches 2.. unless predicate evercraft:advantage/is_sneaking run attribute @s attack_damage modifier remove evercraft:adv_pres_backstab

# P1: Invisibility while sneaking
execute if score @s adv.pres_stea matches 1.. if predicate evercraft:advantage/is_sneaking run effect give @s minecraft:invisibility 2 0 true
