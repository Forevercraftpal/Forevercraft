# Friend Gift — Apply streak bonus to gift roll and determine tier
# #fr_gift_roll ec.temp = raw roll (1-100)
# #fr_gift_streak ec.temp = gift streak count
# Output: #fr_gift_tier ec.temp = crate tier (1-6)

# Calculate streak bonus (higher streak = lower roll = better tier)
scoreboard players set #fr_streak_bonus ec.temp 0
execute if score #fr_gift_streak ec.temp matches 3.. run scoreboard players set #fr_streak_bonus ec.temp 5
execute if score #fr_gift_streak ec.temp matches 7.. run scoreboard players set #fr_streak_bonus ec.temp 12
execute if score #fr_gift_streak ec.temp matches 14.. run scoreboard players set #fr_streak_bonus ec.temp 20
execute if score #fr_gift_streak ec.temp matches 30.. run scoreboard players set #fr_streak_bonus ec.temp 30

# Apply bonus
scoreboard players operation #fr_gift_roll ec.temp -= #fr_streak_bonus ec.temp

# Clamp to minimum 1
execute if score #fr_gift_roll ec.temp matches ..0 run scoreboard players set #fr_gift_roll ec.temp 1

# Determine tier from adjusted roll
scoreboard players set #fr_gift_tier ec.temp 1
execute if score #fr_gift_roll ec.temp matches 41.. run scoreboard players set #fr_gift_tier ec.temp 2
execute if score #fr_gift_roll ec.temp matches 66.. run scoreboard players set #fr_gift_tier ec.temp 3
execute if score #fr_gift_roll ec.temp matches 84.. run scoreboard players set #fr_gift_tier ec.temp 4
execute if score #fr_gift_roll ec.temp matches 94.. run scoreboard players set #fr_gift_tier ec.temp 5
execute if score #fr_gift_roll ec.temp matches 99.. run scoreboard players set #fr_gift_tier ec.temp 6
