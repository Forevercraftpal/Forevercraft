# Guild Diplomacy — Check and remove expired cooldowns from this marker
# Run as: guild marker entity

data modify storage evercraft:guild temp.cd_check set from entity @s data.cooldowns
data modify entity @s data.cooldowns set value []
function evercraft:guild/diplomacy/cleanup_cooldowns_iter
