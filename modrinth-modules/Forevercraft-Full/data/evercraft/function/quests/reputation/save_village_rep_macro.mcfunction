# ============================================================
# Save Village Rep Macro (internal)
# Called with {vid: village_id, uuid: player_uuid_part, save: {rep: X, rank: Y}}
# ============================================================

# Save reputation data to village-specific storage
$data modify storage eden:database reputation.v$(vid).u$(uuid) set from storage eden:temp rep.save

# Clear temp
data remove storage eden:temp rep.save
