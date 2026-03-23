# Glyphforge — On Place (advancement reward)
advancement revoke @s only evercraft:glyphforge/place_forge
tag @s add ec.searching
scoreboard players set #rf_ray ec.temp 0
execute at @s anchored eyes positioned ^ ^ ^1 run function evercraft:glyphforge/raycast_place

# Fallback: grid scan if raycast missed (oblique angles)
execute if entity @s[tag=ec.searching] at @s align xyz run function evercraft:util/scan_for_lodestone {setup_function:"evercraft:glyphforge/setup_forge"}
