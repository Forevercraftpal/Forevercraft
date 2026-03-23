# ID 17 (Cartographer): Find 10 structure crates (stat_struct delta)
execute if score @s adv.chal_id matches 17 run scoreboard players operation #delta adv.temp = @s adv.stat_struct
execute if score @s adv.chal_id matches 17 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 17 if score #delta adv.temp matches 7.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 17 if score #delta adv.temp matches 10.. run function evercraft:advantage/challenges/complete

# ID 42 (World Walker): Open 25 structure crates (stat_struct delta)
execute if score @s adv.chal_id matches 42 run scoreboard players operation #delta adv.temp = @s adv.stat_struct
execute if score @s adv.chal_id matches 42 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 42 if score #delta adv.temp matches 18.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 42 if score #delta adv.temp matches 25.. run function evercraft:advantage/challenges/complete

# ID 43 (Trailblazer): Open 50 structure crates (stat_struct delta)
execute if score @s adv.chal_id matches 43 run scoreboard players operation #delta adv.temp = @s adv.stat_struct
execute if score @s adv.chal_id matches 43 run scoreboard players operation #delta adv.temp -= @s adv.chal_prog
execute if score @s adv.chal_id matches 43 if score #delta adv.temp matches 37.. if score @s adv.chal_75 matches 0 run function evercraft:advantage/challenges/notify_75
execute if score @s adv.chal_id matches 43 if score #delta adv.temp matches 50.. run function evercraft:advantage/challenges/complete
