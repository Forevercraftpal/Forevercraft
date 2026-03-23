# ID 11 (Slayer): Kill 500 mobs (stat_mobs delta)
execute if score @s adv.chal_id matches 11 run scoreboard players operation #delta adv.temp = @s adv.stat_mobs
execute if score @s adv.chal_id matches 11 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 11 if score #delta adv.temp matches 375.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 11 if score #delta adv.temp matches 500.. run function evercraft:advantage/challenges/complete

# ID 32 (Exterminator): Kill 1000 mobs (stat_mobs delta)
execute if score @s adv.chal_id matches 32 run scoreboard players operation #delta adv.temp = @s adv.stat_mobs
execute if score @s adv.chal_id matches 32 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 32 if score #delta adv.temp matches 750.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 32 if score #delta adv.temp matches 1000.. run function evercraft:advantage/challenges/complete

# ID 33 (Trade Master): Complete 100 villager trades (stat_trades delta)
execute if score @s adv.chal_id matches 33 run scoreboard players operation #delta adv.temp = @s adv.stat_trades
execute if score @s adv.chal_id matches 33 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 33 if score #delta adv.temp matches 75.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 33 if score #delta adv.temp matches 100.. run function evercraft:advantage/challenges/complete
