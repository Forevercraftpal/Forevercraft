# ID 15 (Green Thumb): Harvest 1,000 crops (stat_harvest delta)
execute if score @s adv.chal_id matches 15 run scoreboard players operation #delta adv.temp = @s adv.stat_harvest
execute if score @s adv.chal_id matches 15 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 15 if score #delta adv.temp matches 750.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 15 if score #delta adv.temp matches 1000.. run function evercraft:advantage/challenges/complete

# ID 38 (Harvest Lord): Harvest 2,500 crops (stat_harvest delta)
execute if score @s adv.chal_id matches 38 run scoreboard players operation #delta adv.temp = @s adv.stat_harvest
execute if score @s adv.chal_id matches 38 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 38 if score #delta adv.temp matches 1875.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 38 if score #delta adv.temp matches 2500.. run function evercraft:advantage/challenges/complete

# ID 39 (Green Revolution): Harvest 500 crops in one session (stat_harvest delta)
execute if score @s adv.chal_id matches 39 run scoreboard players operation #delta adv.temp = @s adv.stat_harvest
execute if score @s adv.chal_id matches 39 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 39 if score #delta adv.temp matches 375.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 39 if score #delta adv.temp matches 500.. run function evercraft:advantage/challenges/complete
