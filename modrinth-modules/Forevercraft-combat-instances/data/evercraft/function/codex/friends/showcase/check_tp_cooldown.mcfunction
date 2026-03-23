# Showcase — Check best friend TP cooldown
# Macro: $(self_uuid3), $(target_uuid3)
# Sets #sc_tp_ready ec.temp (1=ready, 0=on cooldown)
# Sets evercraft:showcase temp.tp_ready, temp.tp_remaining_h, temp.tp_remaining_m

# Default: ready (set all macro-needed values)
scoreboard players set #sc_tp_ready ec.temp 1
data modify storage evercraft:showcase temp.tp_ready set value 1
data modify storage evercraft:showcase temp.tp_remaining_h set value 0
data modify storage evercraft:showcase temp.tp_remaining_m set value 0

# Check if cooldown entry exists
$execute unless data storage evercraft:friend_tp "tp_$(self_uuid3)_$(target_uuid3)" run return 0

# Read stored tp_at
$execute store result score #tp_at ec.temp run data get storage evercraft:friend_tp "tp_$(self_uuid3)_$(target_uuid3)".tp_at

# Calculate elapsed = now - tp_at
execute store result score #tp_now ec.temp run time query gametime
scoreboard players operation #tp_elapsed ec.temp = #tp_now ec.temp
scoreboard players operation #tp_elapsed ec.temp -= #tp_at ec.temp

# Check if cooldown expired
execute if score #tp_elapsed ec.temp >= #fr_tp_cooldown ec.const run return run data modify storage evercraft:showcase temp.tp_ready set value 1

# Still on cooldown
scoreboard players set #sc_tp_ready ec.temp 0
data modify storage evercraft:showcase temp.tp_ready set value 0

# Remaining ticks = cooldown - elapsed
scoreboard players operation #tp_remain ec.temp = #fr_tp_cooldown ec.const
scoreboard players operation #tp_remain ec.temp -= #tp_elapsed ec.temp

# Convert ticks to hours and minutes (1200 ticks = 1 minute)
scoreboard players set #1200 ec.temp 1200
scoreboard players operation #tp_mins ec.temp = #tp_remain ec.temp
scoreboard players operation #tp_mins ec.temp /= #1200 ec.temp

# hours = minutes / 60
scoreboard players operation #tp_hrs ec.temp = #tp_mins ec.temp
scoreboard players operation #tp_hrs ec.temp /= #60 ec.const

# remaining minutes = minutes % 60
scoreboard players operation #tp_rmins ec.temp = #tp_mins ec.temp
scoreboard players operation #tp_rmins ec.temp %= #60 ec.const

# Store for display
execute store result storage evercraft:showcase temp.tp_remaining_h int 1 run scoreboard players get #tp_hrs ec.temp
execute store result storage evercraft:showcase temp.tp_remaining_m int 1 run scoreboard players get #tp_rmins ec.temp
