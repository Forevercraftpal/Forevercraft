# Depthsworn — Spirit Ability on Trident Hit
# Routes to ability 1 or ability 2 based on sneak, with cooldown checks

# Sneak+Throw = Ability 2 (Phalanx Charge)
execute if predicate evercraft:is_sneaking if score @s ec.sp_cd2 matches ..0 at @s run function evercraft:spirit/abilities/royal_trident/ability2
execute if predicate evercraft:is_sneaking if score @s ec.sp_cd2 matches 1.. run return 0

# Normal Throw = Ability 1 (Aegis Wall) — plants at player position
execute unless predicate evercraft:is_sneaking if score @s ec.sp_cd1 matches ..0 at @s run function evercraft:spirit/abilities/royal_trident/ability1
