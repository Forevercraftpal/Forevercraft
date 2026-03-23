schedule function evercraft:mobs/baby_mount/scheduled 60s

execute as @e[type=#evercraft:mobs/valid_for_keep_baby,tag=bestiary.settings.perma_baby] run data modify entity @s Age set value -999999999
execute as @e[type=#evercraft:mobs/valid_for_keep_baby,tag=bestiary.settings.perma_baby] unless predicate evercraft:mobs/entity/has_vehicle run data modify entity @s Age set value -6000
execute as @e[type=#evercraft:mobs/valid_for_keep_baby,tag=bestiary.settings.perma_baby] unless predicate evercraft:mobs/entity/has_vehicle run tag @s remove bestiary.settings.perma_baby