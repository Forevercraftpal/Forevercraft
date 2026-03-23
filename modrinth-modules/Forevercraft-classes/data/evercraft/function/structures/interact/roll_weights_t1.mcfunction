# Weight calculation for Surface/Tier 1 base (Y > 50 Overworld)
# Mythical odds: 1/250 (0 Dreams) → 1/125 (50 Dreams)
#
# 0 Dreams weights (per 1000): Common 500, Uncommon 300, Rare 130, Ornate 50, Exquisite 16, Mythical 4
# 50 Dreams weights (per 1000): Common 400, Uncommon 300, Rare 170, Ornate 82, Exquisite 40, Mythical 8
#
# Linear interpolation: final = base + (luck/500) * (max - base)
# We use scoreboard math with x100 precision then divide

# Store luck for calculations
scoreboard players operation #luck cf.temp = @s cf.luck

# ============================================================================
# Calculate each tier's weight with Dream Rate scaling
# ============================================================================

# COMMON: 500 → 400 (decreases with luck)
# diff = -100, scaled_diff = luck * -100 / 500
scoreboard players set #w_common cf.temp 500
scoreboard players set #diff cf.temp -100
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players set #divisor cf.temp 500
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_common cf.temp += #diff cf.temp

# UNCOMMON: 300 → 300 (stays same)
scoreboard players set #w_uncommon cf.temp 300

# RARE: 130 → 170 (increases with luck)
scoreboard players set #w_rare cf.temp 130
scoreboard players set #diff cf.temp 40
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_rare cf.temp += #diff cf.temp

# ORNATE: 50 → 82 (increases with luck)
scoreboard players set #w_ornate cf.temp 50
scoreboard players set #diff cf.temp 32
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_ornate cf.temp += #diff cf.temp

# EXQUISITE: 16 → 40 (increases with luck)
scoreboard players set #w_exquisite cf.temp 16
scoreboard players set #diff cf.temp 24
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_exquisite cf.temp += #diff cf.temp

# MYTHICAL: 4 → 8 (increases with luck) - 1/250 → 1/125
scoreboard players set #w_mythical cf.temp 4
scoreboard players set #diff cf.temp 4
scoreboard players operation #diff cf.temp *= #luck cf.temp
scoreboard players operation #diff cf.temp /= #divisor cf.temp
scoreboard players operation #w_mythical cf.temp += #diff cf.temp

# ============================================================================
# Convert to cumulative thresholds for roll checking
# Roll 1-1000, we check if roll > threshold to upgrade tier
# ============================================================================

# #w1 = common ceiling (common weight)
scoreboard players operation #w1 cf.temp = #w_common cf.temp

# #w2 = uncommon ceiling (common + uncommon)
scoreboard players operation #w2 cf.temp = #w1 cf.temp
scoreboard players operation #w2 cf.temp += #w_uncommon cf.temp

# #w3 = rare ceiling
scoreboard players operation #w3 cf.temp = #w2 cf.temp
scoreboard players operation #w3 cf.temp += #w_rare cf.temp

# #w4 = ornate ceiling
scoreboard players operation #w4 cf.temp = #w3 cf.temp
scoreboard players operation #w4 cf.temp += #w_ornate cf.temp

# #w5 = exquisite ceiling
scoreboard players operation #w5 cf.temp = #w4 cf.temp
scoreboard players operation #w5 cf.temp += #w_exquisite cf.temp

# #w6 = mythical ceiling (should be 1000)
scoreboard players operation #w6 cf.temp = #w5 cf.temp
scoreboard players operation #w6 cf.temp += #w_mythical cf.temp
