# Guild Companion — Clear guild_pet:1b from a single Pets[] entry
# Run as: player (#Search companion.id already set)
# Iterates Pets[] to find one with guild_pet:1b and removes the flag

# Simple approach: remove guild_pet from all Pets entries that have it
# This is safe because a player can only have guild pets from one guild
execute positioned 0 -60 0 as @n[type=marker, tag=companion.marker, predicate=evercraft:companions/check_id] run function evercraft:guild/pets/clear_guild_flag_inner
