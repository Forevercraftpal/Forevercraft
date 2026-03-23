# Hard pity — guaranteed Exquisite or better at 30 pulls
# Roll 1-1000: Mythical 2% (1-20), Exquisite 98% (21-1000)
execute store result score #gacha_roll ec.temp run random value 1..1000
execute if score #gacha_roll ec.temp matches 1..20 run return run scoreboard players set #gacha_tier ec.temp 6
scoreboard players set #gacha_tier ec.temp 5
