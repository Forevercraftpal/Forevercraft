# Guild Zone — Sync zone coords from guild marker to player scoreboards
# Run as: guilded player (@s has ec.guild_id set)
# Reads data.zone.{x,y,z,dim} from guild marker at (0,-61,0)

scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run function evercraft:guild/zone/sync_from_marker
