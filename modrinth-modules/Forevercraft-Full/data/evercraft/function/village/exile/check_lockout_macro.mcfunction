# Check Lockout Macro
# Reads exile expiry from storage and compares to current gametime
# Called with {vid: village_id, uuid: player_uuid_part}

# Try to load exile data
$data modify storage eden:temp vs.exile_data set from storage eden:database exile.v$(vid).u$(uuid)

# Check if exile data exists
execute store result score #vs_exile_exists vs.temp if data storage eden:temp vs.exile_data.expires_at

# No exile data = not exiled
execute unless score #vs_exile_exists vs.temp matches 1 run scoreboard players set @s vs.exile 0
execute unless score #vs_exile_exists vs.temp matches 1 run return fail

# Exile data exists — check if expired
execute store result score #vs_exile_expires vs.temp run data get storage eden:temp vs.exile_data.expires_at
execute store result score #vs_now vs.temp run time query gametime

# If current time >= expires_at, exile is over
execute if score #vs_now vs.temp >= #vs_exile_expires vs.temp run function evercraft:village/exile/remove_lockout
execute if score #vs_now vs.temp >= #vs_exile_expires vs.temp run return fail

# Still exiled — keep vs.exile_data in temp for on_enter_exiled to read
scoreboard players set @s vs.exile 1
