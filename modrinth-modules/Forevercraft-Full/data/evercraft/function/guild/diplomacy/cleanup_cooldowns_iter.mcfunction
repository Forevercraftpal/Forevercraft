# Guild Diplomacy — Iterate cooldown entries, keep non-expired
# Run as: guild marker entity

execute unless data storage evercraft:guild temp.cd_check[0] run return 0

# Get available_at of first entry
execute store result score #gd_cd_avail ec.temp run data get storage evercraft:guild temp.cd_check[0].available_at

# If not expired, re-append
execute if score #gd_cd_avail ec.temp > #gd_now ec.temp run data modify entity @s data.cooldowns append from storage evercraft:guild temp.cd_check[0]

# Remove first and recurse
data remove storage evercraft:guild temp.cd_check[0]
function evercraft:guild/diplomacy/cleanup_cooldowns_iter
