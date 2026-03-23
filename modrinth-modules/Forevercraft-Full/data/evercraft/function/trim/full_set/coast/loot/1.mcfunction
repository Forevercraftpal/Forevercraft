advancement revoke @s from evercraft:trim/root
execute unless entity @s[tag=full_set_coast] run return 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function evercraft:trim/full_set/coast/loot/2
