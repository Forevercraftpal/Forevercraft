# Tab 3: Process Entry — count total, display if on current page
# @s = named tamed entity

# Count total
scoreboard players add #bd_summon_total ec.temp 1

# Check if this entry is on the current page
# idx >= skip AND idx < skip+10
execute if score #bd_summon_idx ec.temp < #bd_summon_skip ec.temp run scoreboard players add #bd_summon_idx ec.temp 1
execute if score #bd_summon_idx ec.temp < #bd_summon_skip ec.temp run return fail

# Check upper bound (already have 10 displayed)
execute if score #bd_summon_row ec.temp matches 10.. run scoreboard players add #bd_summon_idx ec.temp 1
execute if score #bd_summon_row ec.temp matches 10.. run return fail

# On current page — display this entry
function evercraft:buddy/gui/tab_summon/add_entry

scoreboard players add #bd_summon_idx ec.temp 1
