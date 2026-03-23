# Convert villager to Retired Adventurer
function evercraft:professions/berries/strip_all_tags
function evercraft:professions/jobs/retired_adventurer/change_to_profession
data modify entity @s Xp set value 1
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 20
