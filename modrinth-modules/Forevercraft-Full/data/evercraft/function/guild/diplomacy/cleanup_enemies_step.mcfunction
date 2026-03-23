# Guild Diplomacy — Check and remove expired enemies from this marker
# Run as: guild marker entity with at least one enemy entry
# #gd_now ec.temp = current gametime

# Copy enemies to temp, clear on entity, rebuild non-expired
data modify storage evercraft:guild temp.enemy_check set from entity @s data.enemies
data modify entity @s data.enemies set value []

function evercraft:guild/diplomacy/cleanup_enemies_iter
