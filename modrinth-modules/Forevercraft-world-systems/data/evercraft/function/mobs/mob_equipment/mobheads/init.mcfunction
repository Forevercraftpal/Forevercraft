$execute unless predicate {"condition":"minecraft:random_chance","chance":$(mobheads)} run return fail

execute as @s[type=drowned] run function evercraft:mobs/mob_equipment/mobheads/drowned with storage eden:temp mobheads.drowned
execute as @s[type=husk] run function evercraft:mobs/mob_equipment/mobheads/husk with storage eden:temp mobheads.husk
execute as @s[type=zombie] run function evercraft:mobs/mob_equipment/mobheads/zombie with storage eden:temp mobheads.zombie
execute as @s[type=skeleton] run function evercraft:mobs/mob_equipment/mobheads/skeleton with storage eden:temp mobheads.skeleton
execute as @s[type=stray] run function evercraft:mobs/mob_equipment/mobheads/stray with storage eden:temp mobheads.stray
execute as @s[type=wither_skeleton] run function evercraft:mobs/mob_equipment/mobheads/wither_skeleton with storage eden:temp mobheads.wither_skeleton