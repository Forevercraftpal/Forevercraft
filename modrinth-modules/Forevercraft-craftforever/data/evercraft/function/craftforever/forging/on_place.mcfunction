# Artisan Forge — On Place (advancement reward)
advancement revoke @s only evercraft:craftforever/place_forge
tag @s add ec.searching
scoreboard players set #cf_ray ec.cf_temp 0
execute at @s anchored eyes positioned ^ ^ ^1 run function evercraft:craftforever/forging/raycast_place

# Fallback: grid scan if raycast missed (oblique angles)
execute if entity @s[tag=ec.searching] at @s align xyz run function evercraft:util/scan_for_lodestone {setup_function:"evercraft:craftforever/forging/place_table"}
