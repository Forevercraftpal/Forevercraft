# Bulwark Shield — Spirit Ability on Shield Block
# Routes to ability 1 or ability 2 based on sneak, with cooldown checks

# Sneak+Block = Ability 2 (Titan's Guard)
execute if predicate evercraft:is_sneaking if score @s ec.sp_cd2 matches ..0 at @s run function evercraft:spirit/abilities/bulwark_shield/ability2
execute if predicate evercraft:is_sneaking if score @s ec.sp_cd2 matches 1.. run return 0

# Normal Block = Ability 1 (Unbreakable Wall)
execute unless predicate evercraft:is_sneaking if score @s ec.sp_cd1 matches ..0 at @s run function evercraft:spirit/abilities/bulwark_shield/ability1
