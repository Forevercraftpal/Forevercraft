# Remove Party Proximity Buffs
# Run as players in a party but with 0 nearby members
# Clean up attribute modifiers and effects

# Remove DR modifier
attribute @s armor modifier remove evercraft:party_dr

# Remove Dream Rate luck modifier
attribute @s luck modifier remove evercraft:party_luck

# Regen will expire naturally (2s duration, not refreshed)
# No explicit removal needed
