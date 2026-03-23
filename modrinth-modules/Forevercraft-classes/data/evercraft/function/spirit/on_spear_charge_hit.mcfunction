# Spirit Spear — Charge Hit Handler
# Fires when a spirit spear charge attack hits mobs (spear_mobs trigger)
advancement revoke @s only evercraft:spirit/spear_charge_hit

# Thornmaw (spirit_id 6, Beastlord) — Wild Summon / Primal Fusion
execute if score @s ec.sp_weapon matches 6 if predicate evercraft:is_sneaking if score @s ec.sp_cd2 matches ..0 at @s run function evercraft:spirit/abilities/whispering_spear/ability2
execute if score @s ec.sp_weapon matches 6 unless predicate evercraft:is_sneaking if score @s ec.sp_cd1 matches ..0 at @s run function evercraft:spirit/abilities/whispering_spear/ability1

# Lifewoven Branch (spirit_id 10, Healer) — Sanctuary / Life Surge
execute if score @s ec.sp_weapon matches 10 if predicate evercraft:is_sneaking if score @s ec.sp_cd2 matches ..0 at @s run function evercraft:spirit/abilities/lifewoven_branch/ability2
execute if score @s ec.sp_weapon matches 10 unless predicate evercraft:is_sneaking if score @s ec.sp_cd1 matches ..0 at @s run function evercraft:spirit/abilities/lifewoven_branch/ability1
