# Soulstring — SPIRIT OVERCHARGE
# Routes to spirit ability 1 (Rift Volley) or ability 2 (Singularity) if sneaking
# @s = player

# Route based on sneak state
execute if predicate evercraft:is_sneaking if score @s ec.sp_cd2 matches ..0 at @s run function evercraft:spirit/abilities/sabrewing/ability2
execute unless predicate evercraft:is_sneaking if score @s ec.sp_cd1 matches ..0 at @s run function evercraft:spirit/abilities/sabrewing/ability1

# Feedback if on spirit cooldown
execute if predicate evercraft:is_sneaking if score @s ec.sp_cd2 matches 1.. run tellraw @s [{"text":"Singularity Arrow","color":"dark_purple"},{"text":" recharging...","color":"gray"}]
execute unless predicate evercraft:is_sneaking if score @s ec.sp_cd1 matches 1.. run tellraw @s [{"text":"Rift Volley","color":"dark_purple"},{"text":" recharging...","color":"gray"}]
