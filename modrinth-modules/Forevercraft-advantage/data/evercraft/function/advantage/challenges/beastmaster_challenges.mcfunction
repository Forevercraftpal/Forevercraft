# ID 10 (Pack Alpha): Max 3 pets (stat_pets100 >= 3 absolute check)
execute if score @s adv.chal_id matches 10 if score @s adv.stat_pets100 matches 2.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 10 if score @s adv.stat_pets100 matches 3.. run function evercraft:advantage/challenges/complete

# ID 30 (Pack Leader): Have 5 pets at max level (stat_pets100 >= 5 absolute check)
execute if score @s adv.chal_id matches 30 if score @s adv.stat_pets100 matches 4.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 30 if score @s adv.stat_pets100 matches 5.. run function evercraft:advantage/challenges/complete

# ID 31 (Beast Bond): Reach Devoted relationship with active pet (companion.rellevel >= 3)
execute if score @s adv.chal_id matches 31 if score @s companion.rellevel matches 3.. run function evercraft:advantage/challenges/complete
