# Sprint Persist — brief speed boost after stopping sprint
# Called from tick/main for players with adv.pa_agil1=1+
# Uses is_sprinting predicate (already exists from challenges)
execute if predicate evercraft:advantage/is_sprinting run return 0
# Not sprinting — give brief speed boost to maintain momentum
effect give @s minecraft:speed 3 0 true
