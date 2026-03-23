# Dungeon Lockout — Show remaining time for current structure lockout
# Requires: #dg_lockout_val ec.var set (from lockout/get or direct), #dg_struct_id set
# Computes remaining time and displays with structure name

# Compute elapsed: now - lockout_val
execute store result score #dg_now ec.var run time query gametime
scoreboard players operation #dg_elapsed ec.var = #dg_now ec.var
scoreboard players operation #dg_elapsed ec.var -= #dg_lockout_val ec.var

# Remaining = 504000 - elapsed
scoreboard players set #dg_remaining ec.var 504000
scoreboard players operation #dg_remaining ec.var -= #dg_elapsed ec.var

# Convert remaining ticks to in-game days (/ 72000)
scoreboard players operation #dg_remain_days ec.var = #dg_remaining ec.var
scoreboard players operation #dg_remain_days ec.var /= #72000 ec.const

# Get remaining hours within the day: (remaining % 72000) / 3000
scoreboard players operation #dg_remain_hrs ec.var = #dg_remaining ec.var
scoreboard players operation #dg_remain_hrs ec.var %= #72000 ec.const
scoreboard players set #3000 ec.var 3000
scoreboard players operation #dg_remain_hrs ec.var /= #3000 ec.var

# Store to storage for macro display
execute store result storage evercraft:dungeon lockout.days int 1 run scoreboard players get #dg_remain_days ec.var
execute store result storage evercraft:dungeon lockout.hours int 1 run scoreboard players get #dg_remain_hrs ec.var

# Get structure display name
function evercraft:dungeon/lockout/get_name

# Show the message
function evercraft:dungeon/lockout_display with storage evercraft:dungeon lockout
