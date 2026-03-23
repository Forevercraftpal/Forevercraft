# ID 16 (Iron Chef): Smelt 500 items (stat_smelt delta)
execute if score @s adv.chal_id matches 16 run scoreboard players operation #delta adv.temp = @s adv.stat_smelt
execute if score @s adv.chal_id matches 16 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 16 if score #delta adv.temp matches 375.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 16 if score #delta adv.temp matches 500.. run function evercraft:advantage/challenges/complete

# ID 40 (Master Smith): Smelt 1,000 items (stat_smelt delta)
execute if score @s adv.chal_id matches 40 run scoreboard players operation #delta adv.temp = @s adv.stat_smelt
execute if score @s adv.chal_id matches 40 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 40 if score #delta adv.temp matches 750.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 40 if score #delta adv.temp matches 1000.. run function evercraft:advantage/challenges/complete

# ID 41 (Furnace King): Smelt 2,000 items (stat_smelt delta)
execute if score @s adv.chal_id matches 41 run scoreboard players operation #delta adv.temp = @s adv.stat_smelt
execute if score @s adv.chal_id matches 41 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 41 if score #delta adv.temp matches 1500.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 41 if score #delta adv.temp matches 2000.. run function evercraft:advantage/challenges/complete
