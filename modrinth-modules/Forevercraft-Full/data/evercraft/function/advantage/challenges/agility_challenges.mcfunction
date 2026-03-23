# ID 1 (Marathon): Walk 10,000 blocks
execute if score @s adv.chal_id matches 1 run scoreboard players operation #delta adv.temp = @s adv.stat_walk
execute if score @s adv.chal_id matches 1 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 1 if score #delta adv.temp matches 7500.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 1 if score #delta adv.temp matches 10000.. run function evercraft:advantage/challenges/complete

# ID 2 (Speedster): Sprint 60 continuous seconds
# Uses sprinting predicate — increment while sprinting, reset on stop
execute if score @s adv.chal_id matches 2 if predicate evercraft:advantage/is_sprinting run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 2 unless predicate evercraft:advantage/is_sprinting run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 2 if score @s adv.chal_prog matches 45.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 2 if score @s adv.chal_prog matches 60.. run function evercraft:advantage/challenges/complete

# ID 18 (Wanderer): Walk 15,000 blocks
execute if score @s adv.chal_id matches 18 run scoreboard players operation #delta adv.temp = @s adv.stat_walk
execute if score @s adv.chal_id matches 18 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 18 if score #delta adv.temp matches 11250.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 18 if score #delta adv.temp matches 15000.. run function evercraft:advantage/challenges/complete

# ID 19 (Dash Master): Sprint 120 continuous seconds
execute if score @s adv.chal_id matches 19 if predicate evercraft:advantage/is_sprinting run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 19 unless predicate evercraft:advantage/is_sprinting run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 19 if score @s adv.chal_prog matches 90.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 19 if score @s adv.chal_prog matches 120.. run function evercraft:advantage/challenges/complete
