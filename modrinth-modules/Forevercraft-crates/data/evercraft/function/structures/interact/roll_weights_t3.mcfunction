# Weight calculation for Deep/Nether/Tier 3 base (Y < 0 Overworld or Nether)
# Mythical odds: 1/100 (0 Dreams) → 1/50 (50 Dreams)
#
# 0 Dreams weights (per 1000): Common 300, Uncommon 310, Rare 230, Ornate 110, Exquisite 40, Mythical 10
# 50 Dreams weights (per 1000): Common 200, Uncommon 280, Rare 290, Ornate 150, Exquisite 60, Mythical 20

scoreboard players operation #luck cf.temp = @s cf.luck
scoreboard players set #divisor cf.temp 500

# COMMON: 300 → 200
scoreboard players set #w_common cf.temp 300
scoreboard players set #diff cf.temp -100
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_common cf.temp += #diff cf.temp

# UNCOMMON: 310 → 280
scoreboard players set #w_uncommon cf.temp 310
scoreboard players set #diff cf.temp -30
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_uncommon cf.temp += #diff cf.temp

# RARE: 230 → 290
scoreboard players set #w_rare cf.temp 230
scoreboard players set #diff cf.temp 60
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_rare cf.temp += #diff cf.temp

# ORNATE: 110 → 150
scoreboard players set #w_ornate cf.temp 110
scoreboard players set #diff cf.temp 40
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_ornate cf.temp += #diff cf.temp

# EXQUISITE: 40 → 60
scoreboard players set #w_exquisite cf.temp 40
scoreboard players set #diff cf.temp 20
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_exquisite cf.temp += #diff cf.temp

# MYTHICAL: 10 → 20 (1/100 → 1/50)
scoreboard players set #w_mythical cf.temp 10
scoreboard players set #diff cf.temp 10
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
