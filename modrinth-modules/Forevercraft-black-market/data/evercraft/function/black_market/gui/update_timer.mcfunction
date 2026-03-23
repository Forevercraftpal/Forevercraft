# Black Market — Update Deal Timer Display
# Shows time remaining until deals rotate (next dawn = DayTime 0)
# Run at BM.Anchor position

# Calculate hours remaining until dawn (DayTime 0 in slow time)
# DayTime wraps at 24000. Dawn is at 0. Current DayTime tells us how far through the day we are.
# Remaining = (24000 - current_daytime) / 1000 = hours until next day
execute store result score #bm_timer ec.temp run time query daytime
scoreboard players set #24000 ec.temp 24000
scoreboard players operation #bm_timer ec.temp = #24000 ec.temp
execute store result score #bm_current ec.temp run time query daytime
scoreboard players operation #bm_timer ec.temp -= #bm_current ec.temp
# Convert to minutes: remaining_ticks / 1000 * 60 / 24000... simpler: remaining / 400 = minutes
scoreboard players set #400 ec.temp 400
scoreboard players operation #bm_timer ec.temp /= #400 ec.temp

# Write to storage for macro display
execute store result storage evercraft:black_market timer.minutes int 1 run scoreboard players get #bm_timer ec.temp

# Update timer text entity
function evercraft:black_market/gui/update_timer_text with storage evercraft:black_market timer
