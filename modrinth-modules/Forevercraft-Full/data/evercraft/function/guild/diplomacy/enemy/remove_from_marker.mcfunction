# Guild Diplomacy — Remove enemy entry from a marker
# Run as: guild marker entity
# temp.target_id = guild ID to remove from enemies list

data modify storage evercraft:guild temp.enemy_list set from entity @s data.enemies
data modify entity @s data.enemies set value []
function evercraft:guild/diplomacy/enemy/rebuild_step
