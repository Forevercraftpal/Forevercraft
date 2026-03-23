# Farmer's Almanac - Try to bone meal crop at random position
# Macro: $(x), $(z) offsets from positioned origin
# Scans y=-1 to y=1 for growable crops

$execute positioned ~$(x) ~ ~$(z) run function evercraft:artifacts/accessories/grow_crop_here
$execute positioned ~$(x) ~1 ~$(z) run function evercraft:artifacts/accessories/grow_crop_here
$execute positioned ~$(x) ~2 ~$(z) run function evercraft:artifacts/accessories/grow_crop_here
