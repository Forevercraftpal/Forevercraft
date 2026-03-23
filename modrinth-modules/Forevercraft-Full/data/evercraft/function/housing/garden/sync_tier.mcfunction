# Housing Garden — Sync owner tier to marker (Macro)
# Called with: {new_tier:N}
# Run as: player who owns the hearthstone, at player position

$data modify entity @e[type=marker,tag=HS.Marker,distance=..10,limit=1] data.owner_tier set value $(new_tier)
