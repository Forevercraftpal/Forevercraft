# Prospect: Read biome and despawn node at stored coordinates
# Macro — called with storage evercraft:pr_temp {pr_x:X, pr_y:Y, pr_z:Z}
# Targets the exact node the player started mining (prevents wrong-node despawn in multiplayer)
$execute positioned $(pr_x) $(pr_y) $(pr_z) run data modify storage evercraft:pr_temp node_biome set from entity @e[type=marker,tag=ec.prospect_data,distance=..2,limit=1,sort=nearest] data.biome
$execute positioned $(pr_x) $(pr_y) $(pr_z) as @e[type=marker,tag=ec.prospect_data,distance=..2,limit=1,sort=nearest] at @s run function evercraft:prospect/despawn_node
