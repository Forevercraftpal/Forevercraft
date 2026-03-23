# Silence Trim - Warden Prevention
# Run as warden, with a silence-trimmed player nearby
# Only affects wardens that are still emerging (not fully spawned yet)

# Check if warden is still emerging (negative age = emerging from ground)
execute if data entity @s {brain:{memories:{"minecraft:is_emerging":{}}}} run function evercraft:trim/single/silence/banish_warden
