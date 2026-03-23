# raycast done
execute if block ~ ~ ~ #evercraft:trim/sus_block run data modify storage evercraft:trim.loottables sus_block set string block ~ ~ ~ LootTable 10
execute if block ~ ~ ~ #evercraft:trim/sus_block run return run function evercraft:trim/full_set/coast/sus_loot/3 with storage evercraft:trim.loottables

# further raycast, in unsuccesful case
execute positioned ^ ^ ^0.1 if entity @s[distance=..4.5] run function evercraft:trim/full_set/coast/sus_loot/2
