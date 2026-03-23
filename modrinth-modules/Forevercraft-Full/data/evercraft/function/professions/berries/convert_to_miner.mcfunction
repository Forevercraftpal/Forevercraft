# Convert villager to Spelunker
function evercraft:professions/berries/strip_all_tags
function evercraft:professions/jobs/miner/change_to_profession
data modify entity @s Xp set value 1
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 20
