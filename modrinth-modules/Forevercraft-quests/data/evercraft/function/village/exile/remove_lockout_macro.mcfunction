# Remove Lockout Macro
# Clears exile data from eden:database
# Called with {vid: village_id, uuid: player_uuid_part}
$data remove storage eden:database exile.v$(vid).u$(uuid)
