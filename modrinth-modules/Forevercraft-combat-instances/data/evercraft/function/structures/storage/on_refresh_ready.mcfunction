# Structure Storage — Timer expired, convert to refresh marker
# Run as the marker entity
tag @s add cf.refresh_marker
tag @s remove cf.looted_marker
function evercraft:structures/storage/notify_ready
function evercraft:structures/storage/store_ready
function evercraft:structures/storage/reset_vault_block
