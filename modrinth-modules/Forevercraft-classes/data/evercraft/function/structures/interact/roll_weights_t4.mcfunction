# Weight calculation for End/Tier 4 base (The End dimension)
# Mythical odds: 1/50 (0 Dreams) → 1/25 (50 Dreams)
#
# 0 Dreams weights (per 1000): Common 150, Uncommon 270, Rare 310, Ornate 170, Exquisite 80, Mythical 20
# 50 Dreams weights (per 1000): Common 80, Uncommon 200, Rare 340, Ornate 220, Exquisite 120, Mythical 40

scoreboard players operation #luck cf.temp = @s cf.luck
scoreboard players set #divisor cf.temp 500

# COMMON: 150 → 80
scoreboard players set #w_common cf.temp 150
scoreboard players set #diff cf.temp -70
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_common cf.temp += #diff cf.temp

# UNCOMMON: 270 → 200
scoreboard players set #w_uncommon cf.temp 270
scoreboard players set #diff cf.temp -70
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_uncommon cf.temp += #diff cf.temp

# RARE: 310 → 340
scoreboard players set #w_rare cf.temp 310
scoreboard players set #diff cf.temp 30
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_rare cf.temp += #diff cf.temp

# ORNATE: 170 → 220
scoreboard players set #w_ornate cf.temp 170
scoreboard players set #diff cf.temp 50
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_ornate cf.temp += #diff cf.temp

# EXQUISITE: 80 → 120
scoreboard players set #w_exquisite cf.temp 80
scoreboard players set #diff cf.temp 40
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_exquisite cf.temp += #diff cf.temp

# MYTHICAL: 20 → 40 (1/50 → 1/25)
scoreboard players set #w_mythical cf.temp 20
scoreboard players set #diff cf.temp 20
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
