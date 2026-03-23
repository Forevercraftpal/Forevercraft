schedule function evercraft:mobs/spectator_waypoint_receive 10t

# OPT: Gate behind spectator existence — most of the time nobody is in spectator mode
# Tag tracks who has the modifier so we don't call remove on players who never had it
# OPT: Batched attribute+tag into single function calls (was 2 scans per condition)
execute as @a[gamemode=spectator,tag=!ec.spec_wp] run function evercraft:mobs/spectator_waypoint_add
execute as @a[gamemode=!spectator,tag=ec.spec_wp] run function evercraft:mobs/spectator_waypoint_remove
