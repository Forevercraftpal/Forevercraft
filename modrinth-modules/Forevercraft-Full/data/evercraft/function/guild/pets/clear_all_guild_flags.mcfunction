# Guild Companion — Clear ALL guild_pet flags from player's Pets[]
# Run as: player (#Search companion.id already set)
# Called during retrieve_all (leave/kick)

execute positioned 0 -60 0 as @n[type=marker, tag=companion.marker, predicate=evercraft:companions/check_id] run function evercraft:guild/pets/clear_guild_flag_inner
