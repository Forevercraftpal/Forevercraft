# 'modded_id' is the block/item id without 'waxed_' appended. if it was waxed or not is stored in 'wax_flag'

# determine what substring is infront: 'oxidized_', 'weathered_', 'exposed_' or none of the above
data modify storage trim_abilities:copper_bolting root.test_string set string storage trim_abilities:copper_bolting root.modded_id 0 9
data modify storage trim_abilities:copper_bolting root.degredation_level set value 'oxidized_'
execute if data storage trim_abilities:copper_bolting root{test_string:"oxidized_"} run data modify storage trim_abilities:copper_bolting root.base_id set string storage trim_abilities:copper_bolting root.modded_id 9
execute if data storage trim_abilities:copper_bolting root{test_string:"oxidized_"} run return run function #evercraft:trim/bolt_operations with storage trim_abilities:copper_bolting root

data modify storage trim_abilities:copper_bolting root.test_string set string storage trim_abilities:copper_bolting root.modded_id 0 10
data modify storage trim_abilities:copper_bolting root.degredation_level set value 'weathered_'
execute if data storage trim_abilities:copper_bolting root{test_string:"weathered_"} run data modify storage trim_abilities:copper_bolting root.base_id set string storage trim_abilities:copper_bolting root.modded_id 10
execute if data storage trim_abilities:copper_bolting root{test_string:"weathered_"} run return run function #evercraft:trim/bolt_operations with storage trim_abilities:copper_bolting root

data modify storage trim_abilities:copper_bolting root.test_string set string storage trim_abilities:copper_bolting root.modded_id 0 8
data modify storage trim_abilities:copper_bolting root.degredation_level set value 'exposed_'
execute if data storage trim_abilities:copper_bolting root{test_string:"exposed_"} run data modify storage trim_abilities:copper_bolting root.base_id set string storage trim_abilities:copper_bolting root.modded_id 8
execute if data storage trim_abilities:copper_bolting root{test_string:"exposed_"} run return run function #evercraft:trim/bolt_operations with storage trim_abilities:copper_bolting root


data modify storage trim_abilities:copper_bolting root.degredation_level set value 'none'
data modify storage trim_abilities:copper_bolting root.base_id set string storage trim_abilities:copper_bolting root.modded_id
function #evercraft:trim/bolt_operations with storage trim_abilities:copper_bolting root
