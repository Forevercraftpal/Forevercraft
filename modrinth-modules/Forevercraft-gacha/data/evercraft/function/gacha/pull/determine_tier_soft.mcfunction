# Soft pity rates (20+ pulls without Ornate+)
# Boosted rates out of 1000:
# Mythical: 0.5% (1-5), Exquisite: 8.5% (6-90), Ornate: 13% (91-220)
# Rare: 19% (221-410), Uncommon: 24% (411-650), Common: 35% (651-1000)

execute if score #gacha_roll ec.temp matches 1..5 run return run scoreboard players set #gacha_tier ec.temp 6
execute if score #gacha_roll ec.temp matches 6..90 run return run scoreboard players set #gacha_tier ec.temp 5
execute if score #gacha_roll ec.temp matches 91..220 run return run scoreboard players set #gacha_tier ec.temp 4
execute if score #gacha_roll ec.temp matches 221..410 run return run scoreboard players set #gacha_tier ec.temp 3
execute if score #gacha_roll ec.temp matches 411..650 run return run scoreboard players set #gacha_tier ec.temp 2
scoreboard players set #gacha_tier ec.temp 1
