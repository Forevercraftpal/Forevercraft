# Setup ping marker — store gametime for 60s auto-despawn
# Run as the new ping marker

# Store creation gametime (despawns after 1200 ticks = 60s)
execute store result score @s ec.temp run time query gametime
scoreboard players add @s ec.temp 1200
