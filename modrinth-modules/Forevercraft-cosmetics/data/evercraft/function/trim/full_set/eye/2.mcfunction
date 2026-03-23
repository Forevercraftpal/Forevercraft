# raycast done
execute unless block ~ ~ ~ #air if block ~ ~1 ~ #air if block ~ ~2 ~ #air positioned ~ ~1 ~ align xyz run tp @s ~0.5 ~ ~0.5
execute unless block ~ ~ ~ #air if block ~ ~1 ~ #air if block ~ ~2 ~ #air positioned ~ ~1 ~ align xyz run return 0
execute unless block ~ ~ ~ #air if block ~ ~2 ~ #air if block ~ ~3 ~ #air positioned ~ ~2 ~ align xyz run tp @s ~0.5 ~ ~0.5
execute unless block ~ ~ ~ #air if block ~ ~2 ~ #air if block ~ ~3 ~ #air positioned ~ ~2 ~ align xyz run return 0
execute unless block ~ ~ ~ #air positioned ^ ^ ^-0.1 run return run function evercraft:trim/full_set/eye/3

# further raycast, in unsuccesful case
execute if entity @s[distance=..50] positioned ^ ^ ^0.1 run function evercraft:trim/full_set/eye/2
execute unless entity @s[distance=..50] positioned ^ ^ ^50 run function evercraft:trim/full_set/eye/3