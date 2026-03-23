data modify storage trim_abilities:wayfinder check_succes set string block ~ ~ ~ LastOutput -7 -4
execute if data storage trim_abilities:wayfinder {check_succes:"red"} run function evercraft:trim/single/wayfinder/find_fault
execute if data storage trim_abilities:wayfinder {check_succes:"red"} run return 0

data modify storage trim_abilities:wayfinder distance_magnitude set string block ~ ~ ~ LastOutput -6 -5
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run data modify storage trim_abilities:wayfinder distance set string block ~ ~ ~ LastOutput -5 -4
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run function evercraft:trim/single/wayfinder/find5
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run return 0

data modify storage trim_abilities:wayfinder distance_magnitude set string block ~ ~ ~ LastOutput -7 -6
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run data modify storage trim_abilities:wayfinder distance set string block ~ ~ ~ LastOutput -6 -4
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run function evercraft:trim/single/wayfinder/find5
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run return 0

data modify storage trim_abilities:wayfinder distance_magnitude set string block ~ ~ ~ LastOutput -8 -7
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run data modify storage trim_abilities:wayfinder distance set string block ~ ~ ~ LastOutput -7 -4
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run function evercraft:trim/single/wayfinder/find5
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run return 0

data modify storage trim_abilities:wayfinder distance_magnitude set string block ~ ~ ~ LastOutput -9 -8
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run data modify storage trim_abilities:wayfinder distance set string block ~ ~ ~ LastOutput -8 -4
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run function evercraft:trim/single/wayfinder/find5
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run return 0

data modify storage trim_abilities:wayfinder distance_magnitude set string block ~ ~ ~ LastOutput -10 -9
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run data modify storage trim_abilities:wayfinder distance set string block ~ ~ ~ LastOutput -9 -4
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run function evercraft:trim/single/wayfinder/find5
execute if data storage trim_abilities:wayfinder {distance_magnitude:","} run return 0

data modify storage trim_abilities:wayfinder distance set string block ~ ~ ~ LastOutput -10 -4
function evercraft:trim/single/wayfinder/find5
