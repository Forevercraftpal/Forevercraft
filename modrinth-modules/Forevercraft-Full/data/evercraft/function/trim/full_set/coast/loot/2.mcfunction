# raycast done
execute if block ~ ~ ~ #evercraft:trim/chest_or_barrel run data modify storage evercraft:trim.loottables chest set string block ~ ~ ~ LootTable 10
execute if block ~ ~ ~ #evercraft:trim/chest_or_barrel run data remove block ~ ~ ~ Items
execute if block ~ ~ ~ #evercraft:trim/chest_or_barrel run return run function evercraft:trim/full_set/coast/loot/3 with storage evercraft:trim.loottables

execute if block ~ ~ ~ vault run data modify storage evercraft:trim.loottables vault set string block ~ ~ ~ config.loot_table 10
execute if block ~ ~ ~ vault align xyz positioned ~0.5 ~1 ~0.5 run return run function evercraft:trim/full_set/coast/loot/vault with storage evercraft:trim.loottables

# further raycast, in unsuccesful case
execute positioned ^ ^ ^0.1 if entity @s[distance=..5] run function evercraft:trim/full_set/coast/loot/2
