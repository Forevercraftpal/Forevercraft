# Tab 3: Add Summon Entry
# @s = tamed mob with a CustomName
# #bd_summon_row ec.temp = current row (0-9)

# Only show 10 per page
execute if score #bd_summon_row ec.temp matches 10.. run return fail

# Store mob name and type for display
data modify storage evercraft:buddy temp.entry_name set from entity @s CustomName

# Calculate Y position: start at ^2.10, each row -0.07
execute store result storage evercraft:buddy temp.row int 1 run scoreboard players get #bd_summon_row ec.temp

# Store mob UUID for summoning
execute store result storage evercraft:buddy temp.entry_uuid0 int 1 run data get entity @s UUID[0]
execute store result storage evercraft:buddy temp.entry_uuid1 int 1 run data get entity @s UUID[1]

# Determine if this is a buddy/best buddy for the display tag
data modify storage evercraft:buddy temp.entry_tag set value ""
execute if entity @s[tag=ec.bd_buddy] run data modify storage evercraft:buddy temp.entry_tag set value " [Buddy]"
execute if entity @s[tag=ec.bd_best] run data modify storage evercraft:buddy temp.entry_tag set value " [Best Buddy]"

# Spawn the entry display (name + click button)
function evercraft:buddy/gui/tab_summon/spawn_entry with storage evercraft:buddy temp

# Increment row
scoreboard players add #bd_summon_row ec.temp 1
