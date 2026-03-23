# Apply Lockout Macro
# Stores exile expiry timestamp in eden:database
# Called with {vid: village_id, uuid: player_uuid_part, expires_at: gametime}
$data modify storage eden:database exile.v$(vid).u$(uuid) set value {expires_at:$(expires_at)}
