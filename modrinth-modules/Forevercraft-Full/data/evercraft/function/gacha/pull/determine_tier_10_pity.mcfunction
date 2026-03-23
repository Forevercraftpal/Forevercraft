# 10-pull pity — guaranteed Rare or better
# Roll 1-1000: Mythical 0.5% (1-5), Exquisite 10.5% (6-110), Ornate 20% (111-310), Rare 69% (311-1000)
execute store result score #gacha_roll ec.temp run random value 1..1000
execute if score #gacha_roll ec.temp matches 1..5 run return run scoreboard players set #gacha_tier ec.temp 6
execute if score #gacha_roll ec.temp matches 6..110 run return run scoreboard players set #gacha_tier ec.temp 5
execute if score #gacha_roll ec.temp matches 111..310 run return run scoreboard players set #gacha_tier ec.temp 4
scoreboard players set #gacha_tier ec.temp 3
