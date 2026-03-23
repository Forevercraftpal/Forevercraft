# ID 9 (Grinder): Complete 25 quests (stat_quests delta)
execute if score @s adv.chal_id matches 9 run scoreboard players operation #delta adv.temp = @s adv.stat_quests
execute if score @s adv.chal_id matches 9 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 9 if score #delta adv.temp matches 18.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 9 if score #delta adv.temp matches 25.. run function evercraft:advantage/challenges/complete

# ID 28 (Completionist): Complete 50 quests (stat_quests delta)
execute if score @s adv.chal_id matches 28 run scoreboard players operation #delta adv.temp = @s adv.stat_quests
execute if score @s adv.chal_id matches 28 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 28 if score #delta adv.temp matches 37.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 28 if score #delta adv.temp matches 50.. run function evercraft:advantage/challenges/complete

# ID 29 (Bounty Hunter): Complete 10 bounties (ec.bounty_done delta)
execute if score @s adv.chal_id matches 29 run scoreboard players operation #delta adv.temp = @s ec.bounty_done
execute if score @s adv.chal_id matches 29 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 29 if score #delta adv.temp matches 7.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 29 if score #delta adv.temp matches 10.. run function evercraft:advantage/challenges/complete
