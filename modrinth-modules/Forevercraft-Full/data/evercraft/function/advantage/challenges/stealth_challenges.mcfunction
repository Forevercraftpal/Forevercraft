# ID 6 (Phantom): Sneak 5,000 blocks (stat_crouch delta)
execute if score @s adv.chal_id matches 6 run scoreboard players operation #delta adv.temp = @s adv.stat_crouch
execute if score @s adv.chal_id matches 6 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 6 if score #delta adv.temp matches 3750.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 6 if score #delta adv.temp matches 5000.. run function evercraft:advantage/challenges/complete

# ID 24 (Silent Hunter): Kill 50 mobs while sneaking
# chal_prog = sneak kill count, chal_aux = last known stat_mobs
execute if score @s adv.chal_id matches 24 run scoreboard players operation #delta adv.temp = @s adv.stat_mobs
execute if score @s adv.chal_id matches 24 run scoreboard players operation #delta adv.temp -= @s adv.chal_aux
execute if score @s adv.chal_id matches 24 if score #delta adv.temp matches 1.. if predicate evercraft:advantage/is_sneaking run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 24 if score #delta adv.temp matches 1.. run scoreboard players operation @s adv.chal_aux = @s adv.stat_mobs
execute if score @s adv.chal_id matches 24 if score @s adv.chal_prog matches 37.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 24 if score @s adv.chal_prog matches 50.. run function evercraft:advantage/challenges/complete

# ID 25 (Ghost Walk): Sneak 10,000 blocks (stat_crouch delta)
execute if score @s adv.chal_id matches 25 run scoreboard players operation #delta adv.temp = @s adv.stat_crouch
execute if score @s adv.chal_id matches 25 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 25 if score #delta adv.temp matches 7500.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 25 if score #delta adv.temp matches 10000.. run function evercraft:advantage/challenges/complete
