# Harmonize — Count harmonizable artifacts from all slots of one hero satchel bag (macro)
# Args: current_bid (bag ID)

# Slot 0
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s0.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s0.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact

# Slot 1
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s1.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s1.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact

# Slot 2
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s2.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s2.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact

# Slot 3
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s3.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s3.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact

# Slot 4
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s4.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s4.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact

# Slot 5
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s5.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s5.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact

# Slot 6
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s6.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s6.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact

# Slot 7
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s7.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s7.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact

# Slot 8
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s8.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s8.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact

# Slot 9
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s9.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s9.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact

# Slot 10
$execute if data storage evercraft:hero_satchel bags.$(current_bid).s10.artifact run data modify storage evercraft:hero_satchel temp.artifact set from storage evercraft:hero_satchel bags.$(current_bid).s10.artifact
execute if data storage evercraft:hero_satchel temp.artifact run function evercraft:harmonize/count_hero_satchel_artifact
data remove storage evercraft:hero_satchel temp.artifact
