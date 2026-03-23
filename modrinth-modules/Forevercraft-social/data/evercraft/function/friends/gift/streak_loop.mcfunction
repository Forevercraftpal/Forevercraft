# Friend Gift — Streak loop: find friend entry, increment or reset gifts_no_return
# #fr_streak_find ec.temp = target uuid3 to find
# #fr_streak_mode ec.temp = 1 for increment, 0 for reset

execute unless data storage evercraft:friends temp.streak_list[0] run return 0

execute store result score #fr_sl_uuid3 ec.temp run data get storage evercraft:friends temp.streak_list[0].uuid3

# If match: copy, modify, append
execute if score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp run data modify storage evercraft:friends temp.streak_entry set from storage evercraft:friends temp.streak_list[0]
# Ensure field exists (for pre-existing friends without it)
execute if score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp unless data storage evercraft:friends temp.streak_entry.gifts_no_return run data modify storage evercraft:friends temp.streak_entry.gifts_no_return set value 0
# Increment mode
execute if score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp if score #fr_streak_mode ec.temp matches 1 store result score #fr_streak_val ec.temp run data get storage evercraft:friends temp.streak_entry.gifts_no_return
execute if score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp if score #fr_streak_mode ec.temp matches 1 run scoreboard players add #fr_streak_val ec.temp 1
execute if score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp if score #fr_streak_mode ec.temp matches 1 store result storage evercraft:friends temp.streak_entry.gifts_no_return int 1 run scoreboard players get #fr_streak_val ec.temp
# Mark sent_gift_today on sender side
execute if score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp if score #fr_streak_mode ec.temp matches 1 run data modify storage evercraft:friends temp.streak_entry.sent_gift_today set value 1b
# Ensure gift_streak field exists (for pre-existing friends)
execute if score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp unless data storage evercraft:friends temp.streak_entry.gift_streak run data modify storage evercraft:friends temp.streak_entry.gift_streak set value 0
# Reset mode
execute if score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp if score #fr_streak_mode ec.temp matches 0 run data modify storage evercraft:friends temp.streak_entry.gifts_no_return set value 0
# Append modified entry
execute if score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp run data modify storage evercraft:friends temp.streak_result append from storage evercraft:friends temp.streak_entry

# If no match: copy as-is, ensuring new fields exist for schema consistency
execute unless score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp run data modify storage evercraft:friends temp.streak_pass set from storage evercraft:friends temp.streak_list[0]
execute unless score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp unless data storage evercraft:friends temp.streak_pass.gift_streak run data modify storage evercraft:friends temp.streak_pass.gift_streak set value 0
execute unless score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp unless data storage evercraft:friends temp.streak_pass.sent_gift_today run data modify storage evercraft:friends temp.streak_pass.sent_gift_today set value 0b
execute unless score #fr_sl_uuid3 ec.temp = #fr_streak_find ec.temp run data modify storage evercraft:friends temp.streak_result append from storage evercraft:friends temp.streak_pass

# Pop and recurse
data remove storage evercraft:friends temp.streak_list[0]
function evercraft:friends/gift/streak_loop
