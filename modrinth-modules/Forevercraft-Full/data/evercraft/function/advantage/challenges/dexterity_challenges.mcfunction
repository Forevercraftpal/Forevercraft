# ID 3 (Marksman): Land 50 attacks (stat_attack delta)
execute if score @s adv.chal_id matches 3 run scoreboard players operation #delta adv.temp = @s adv.stat_attack
execute if score @s adv.chal_id matches 3 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 3 if score #delta adv.temp matches 37.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 3 if score #delta adv.temp matches 50.. run function evercraft:advantage/challenges/complete

# ID 20 (Sharpshooter): Land 100 ranged hits (stat_ranged delta)
execute if score @s adv.chal_id matches 20 run scoreboard players operation #delta adv.temp = @s adv.stat_ranged
execute if score @s adv.chal_id matches 20 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 20 if score #delta adv.temp matches 75.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 20 if score #delta adv.temp matches 100.. run function evercraft:advantage/challenges/complete

# ID 21 (Combo Artist): Kill 10 mobs in rapid succession
# chal_prog = current combo streak, chal_aux = last known stat_mobs
execute if score @s adv.chal_id matches 21 run scoreboard players operation #delta adv.temp = @s adv.stat_mobs
execute if score @s adv.chal_id matches 21 run scoreboard players operation #delta adv.temp -= @s adv.chal_aux
execute if score @s adv.chal_id matches 21 if score #delta adv.temp matches 1.. run scoreboard players add @s adv.chal_prog 1
execute if score @s adv.chal_id matches 21 if score #delta adv.temp matches 1.. run scoreboard players operation @s adv.chal_aux = @s adv.stat_mobs
execute if score @s adv.chal_id matches 21 unless score #delta adv.temp matches 1.. run scoreboard players set @s adv.chal_prog 0
execute if score @s adv.chal_id matches 21 if score @s adv.chal_prog matches 7.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 21 if score @s adv.chal_prog matches 10.. run function evercraft:advantage/challenges/complete
