# OPT: Macro positioned — replaces temp marker summon/teleport/kill
# Args: x, y, z (from storage evercraft:cf_temp)
$execute positioned $(x) $(y) $(z) as @e[type=marker,tag=cf.looted_marker,distance=..1] run function evercraft:structures/storage/check_marker
$execute positioned $(x) $(y) $(z) if entity @e[type=marker,tag=cf.refresh_marker,distance=..1] run function evercraft:structures/storage/check_refresh_cleanup
