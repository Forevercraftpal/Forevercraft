# Advantage Triggers — Per-Player Check
# Called as @a from tick — early exit if no triggers are pending
# OPT: Single @a scan instead of 9 separate ones (saves 8 selector evaluations/tick)

# Quick exit if no trigger is set (most ticks, most players)
execute unless score @s adv.levelup matches 1.. unless score @s adv.prestige matches 1.. unless score @s adv.respec matches 1.. unless score @s adv.cosmetic matches 1.. unless score @s adv.challenge matches ..-1 unless score @s adv.challenge matches 1.. unless score @s adv.treeinfo matches 1.. unless score @s adv.explore matches 1.. unless score @s adv.warcry matches 1.. run return 0

# At least one trigger is pending — route it
function evercraft:advantage/triggers
