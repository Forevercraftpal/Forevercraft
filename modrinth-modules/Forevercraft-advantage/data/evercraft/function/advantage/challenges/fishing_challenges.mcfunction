# ID 12 (Perfect Cast): Catch 100 fish
execute if score @s adv.chal_id matches 12 run scoreboard players operation #delta adv.temp = @s adv.stat_fish
execute if score @s adv.chal_id matches 12 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 12 if score #delta adv.temp matches 75.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 12 if score #delta adv.temp matches 100.. run function evercraft:advantage/challenges/complete

# ID 34 (Deep Sea): Catch 250 fish (stat_fish delta)
execute if score @s adv.chal_id matches 34 run scoreboard players operation #delta adv.temp = @s adv.stat_fish
execute if score @s adv.chal_id matches 34 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 34 if score #delta adv.temp matches 187.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 34 if score #delta adv.temp matches 250.. run function evercraft:advantage/challenges/complete

# ID 35 (Rain Fisher): Catch 50 fish during rain
# chal_prog = rain fish count, chal_aux = last known stat_fish
execute if score @s adv.chal_id matches 35 run scoreboard players operation #delta adv.temp = @s adv.stat_fish
execute if score @s adv.chal_id matches 35 run scoreboard players operation #delta adv.temp -= @s adv.chal_aux
execute if score @s adv.chal_id matches 35 if score #delta adv.temp matches 1.. at @s if predicate evercraft:is_raining run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 35 if score #delta adv.temp matches 1.. run scoreboard players operation @s adv.chal_aux = @s adv.stat_fish
execute if score @s adv.chal_id matches 35 if score @s adv.chal_prog matches 37.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 35 if score @s adv.chal_prog matches 50.. run function evercraft:advantage/challenges/complete
