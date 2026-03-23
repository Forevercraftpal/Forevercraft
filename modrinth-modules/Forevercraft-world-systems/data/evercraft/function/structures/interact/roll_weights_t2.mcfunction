# Weight calculation for Underground/Tier 2 base (Y 0-50 Overworld)
# Mythical odds: 1/150 (0 Dreams) → 1/75 (50 Dreams)
#
# 0 Dreams weights (per 1000): Common 400, Uncommon 320, Rare 170, Ornate 77, Exquisite 26, Mythical 7
# 50 Dreams weights (per 1000): Common 300, Uncommon 310, Rare 220, Ornate 110, Exquisite 47, Mythical 13

scoreboard players operation #luck cf.temp = @s cf.luck
scoreboard players set #divisor cf.temp 500

# COMMON: 400 → 300
scoreboard players set #w_common cf.temp 400
scoreboard players set #diff cf.temp -100
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_common cf.temp += #diff cf.temp

# UNCOMMON: 320 → 310
scoreboard players set #w_uncommon cf.temp 320
scoreboard players set #diff cf.temp -10
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_uncommon cf.temp += #diff cf.temp

# RARE: 170 → 220
scoreboard players set #w_rare cf.temp 170
scoreboard players set #diff cf.temp 50
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_rare cf.temp += #diff cf.temp

# ORNATE: 77 → 110
scoreboard players set #w_ornate cf.temp 77
scoreboard players set #diff cf.temp 33
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_ornate cf.temp += #diff cf.temp

# EXQUISITE: 26 → 47
scoreboard players set #w_exquisite cf.temp 26
scoreboard players set #diff cf.temp 21
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_exquisite cf.temp += #diff cf.temp

# MYTHICAL: 7 → 13 (1/150 → 1/75 approximately)
scoreboard players set #w_mythical cf.temp 7
scoreboard players set #diff cf.temp 6
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_mythical cf.temp += #diff cf.temp

# Convert to cumulative thresholds
scoreboard players operation #w1 cf.temp = #w_common cf.temp
scoreboard players operation #w2 cf.temp = #w1 cf.temp
scoreboard players operation #w2 cf.temp += #w_uncommon cf.temp
scoreboard players operation #w3 cf.temp = #w2 cf.temp
scoreboard players operation #w3 cf.temp += #w_rare cf.temp
scoreboard players operation #w4 cf.temp = #w3 cf.temp
scoreboard players operation #w4 cf.temp += #w_ornate cf.temp
scoreboard players operation #w5 cf.temp = #w4 cf.temp
scoreboard players operation #w5 cf.temp += #w_exquisite cf.temp
scoreboard players operation #w6 cf.temp = #w5 cf.temp
scoreboard players operation #w6 cf.temp += #w_mythical cf.temp
