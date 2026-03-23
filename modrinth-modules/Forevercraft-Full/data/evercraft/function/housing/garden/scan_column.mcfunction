# Housing Garden — Scan Column for Crops
# Positioned at bottom of scan column (marker_y - 3)
# Checks 7 Y levels (Y+0 through Y+6) for growable crops

execute positioned ~ ~0 ~ if block ~ ~ ~ #evercraft:growable_crops run return run function evercraft:housing/garden/grow_crop
execute positioned ~ ~1 ~ if block ~ ~ ~ #evercraft:growable_crops run return run function evercraft:housing/garden/grow_crop
execute positioned ~ ~2 ~ if block ~ ~ ~ #evercraft:growable_crops run return run function evercraft:housing/garden/grow_crop
execute positioned ~ ~3 ~ if block ~ ~ ~ #evercraft:growable_crops run return run function evercraft:housing/garden/grow_crop
execute positioned ~ ~4 ~ if block ~ ~ ~ #evercraft:growable_crops run return run function evercraft:housing/garden/grow_crop
execute positioned ~ ~5 ~ if block ~ ~ ~ #evercraft:growable_crops run return run function evercraft:housing/garden/grow_crop
execute positioned ~ ~6 ~ if block ~ ~ ~ #evercraft:growable_crops run return run function evercraft:housing/garden/grow_crop
