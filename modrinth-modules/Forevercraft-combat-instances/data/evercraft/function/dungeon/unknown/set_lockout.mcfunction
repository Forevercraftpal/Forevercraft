# Unknown Structure Dungeon — Set 2-week lockout marker
# Run as: each dg.player participant, at dungeon center (dg.center marker)
# Summons a position-based lockout marker with player UUID + gametime

summon marker ~ ~ ~ {Tags:["dg.unknown_looted","dg.uk_new","ec.entity"],data:{looted_at:0L}}

# Store player UUID in the marker
data modify entity @e[type=marker,tag=dg.uk_new,limit=1] data.player_uuid set from entity @s UUID

# Store current game time for elapsed calculation
execute store result entity @e[type=marker,tag=dg.uk_new,limit=1] data.looted_at long 1 run time query gametime

tag @e[type=marker,tag=dg.uk_new] remove dg.uk_new
