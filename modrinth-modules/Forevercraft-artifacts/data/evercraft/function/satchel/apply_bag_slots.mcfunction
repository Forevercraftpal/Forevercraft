# Satchel — Apply effects from all slots of one bag (macro)
# Args: current_bid (bag ID)

# Slot 0
$execute if data storage evercraft:satchel bags.$(current_bid).s0.artifact run data modify storage evercraft:satchel temp.artifact set from storage evercraft:satchel bags.$(current_bid).s0.artifact
execute if data storage evercraft:satchel temp.artifact run function evercraft:satchel/apply_slot with storage evercraft:satchel temp
data remove storage evercraft:satchel temp.artifact

# Slot 1
$execute if data storage evercraft:satchel bags.$(current_bid).s1.artifact run data modify storage evercraft:satchel temp.artifact set from storage evercraft:satchel bags.$(current_bid).s1.artifact
execute if data storage evercraft:satchel temp.artifact run function evercraft:satchel/apply_slot with storage evercraft:satchel temp
data remove storage evercraft:satchel temp.artifact

# Slot 2
$execute if data storage evercraft:satchel bags.$(current_bid).s2.artifact run data modify storage evercraft:satchel temp.artifact set from storage evercraft:satchel bags.$(current_bid).s2.artifact
execute if data storage evercraft:satchel temp.artifact run function evercraft:satchel/apply_slot with storage evercraft:satchel temp
data remove storage evercraft:satchel temp.artifact

# Slot 3
$execute if data storage evercraft:satchel bags.$(current_bid).s3.artifact run data modify storage evercraft:satchel temp.artifact set from storage evercraft:satchel bags.$(current_bid).s3.artifact
execute if data storage evercraft:satchel temp.artifact run function evercraft:satchel/apply_slot with storage evercraft:satchel temp
data remove storage evercraft:satchel temp.artifact

# Slot 4
$execute if data storage evercraft:satchel bags.$(current_bid).s4.artifact run data modify storage evercraft:satchel temp.artifact set from storage evercraft:satchel bags.$(current_bid).s4.artifact
execute if data storage evercraft:satchel temp.artifact run function evercraft:satchel/apply_slot with storage evercraft:satchel temp
data remove storage evercraft:satchel temp.artifact

# Slot 5
$execute if data storage evercraft:satchel bags.$(current_bid).s5.artifact run data modify storage evercraft:satchel temp.artifact set from storage evercraft:satchel bags.$(current_bid).s5.artifact
execute if data storage evercraft:satchel temp.artifact run function evercraft:satchel/apply_slot with storage evercraft:satchel temp
data remove storage evercraft:satchel temp.artifact

# Slot 6
$execute if data storage evercraft:satchel bags.$(current_bid).s6.artifact run data modify storage evercraft:satchel temp.artifact set from storage evercraft:satchel bags.$(current_bid).s6.artifact
execute if data storage evercraft:satchel temp.artifact run function evercraft:satchel/apply_slot with storage evercraft:satchel temp
data remove storage evercraft:satchel temp.artifact
