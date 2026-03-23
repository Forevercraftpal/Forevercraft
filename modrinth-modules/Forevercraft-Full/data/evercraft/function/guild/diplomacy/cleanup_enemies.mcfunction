# Guild Diplomacy — Clean up expired enemy entries from all guild markers
# Run every 5s in diplomacy tick

# Get current gametime
execute store result score #gd_now ec.temp run time query gametime

# For each guild marker that has enemies, check expiry
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2] if data entity @s data.enemies[0] run function evercraft:guild/diplomacy/cleanup_enemies_step
