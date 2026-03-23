# Bounty — Check if player entered target biome
# Run as player with unspawned bounty, at player

# Detect current biome
function evercraft:biome/detect

# Compare to target
execute unless score @s ec.biome_id = @s ec.bnt_biome run return 0

# Biome match! Spawn the bounty patron
function evercraft:bounty/find_spawn_pos
