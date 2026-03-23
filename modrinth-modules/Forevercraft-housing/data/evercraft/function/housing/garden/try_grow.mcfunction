# Housing Garden — Try Grow at Random Position (Macro)
# Called with: {gx:N, gz:N}
# Run at: hearthstone marker position
# Scans Y-3 to Y+3 at the random XZ offset for growable crops

$execute positioned ~$(gx) ~-3 ~$(gz) run function evercraft:housing/garden/scan_column
