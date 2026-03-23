# Count nearby party members with matching party ID (macro)
# Arg: pid (party ID to match)
# Run as the checking player, at their position

# Count all players with matching party_id within 48 blocks (subtract 1 for self)
$execute store result score @s ec.party_nearby if entity @a[scores={ec.party_id=$(pid)},distance=..48]
scoreboard players remove @s ec.party_nearby 1

# Clamp to 0 minimum (safety)
execute if score @s ec.party_nearby matches ..-1 run scoreboard players set @s ec.party_nearby 0

# Update party size (total members regardless of distance)
$execute store result score @s ec.party_size if entity @a[scores={ec.party_id=$(pid)}]
