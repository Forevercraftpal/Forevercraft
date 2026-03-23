# Guild Diplomacy — Iterate enemy entries, keep non-expired
# Run as: guild marker entity

execute unless data storage evercraft:guild temp.enemy_check[0] run return 0

# Get expires_at of first entry
execute store result score #gd_expires ec.temp run data get storage evercraft:guild temp.enemy_check[0].expires_at

# If not expired (expires_at > now), re-append
execute if score #gd_expires ec.temp > #gd_now ec.temp run data modify entity @s data.enemies append from storage evercraft:guild temp.enemy_check[0]

# If expired, announce (get guild ID for announcement)
execute if score #gd_expires ec.temp <= #gd_now ec.temp store result score #gd_expired_enemy ec.temp run data get storage evercraft:guild temp.enemy_check[0].id
execute if score #gd_expires ec.temp <= #gd_now ec.temp store result score #gd_this_guild ec.temp run scoreboard players get @s ec.guild_id
execute if score #gd_expires ec.temp <= #gd_now ec.temp as @a if score @s ec.guild_id = #gd_this_guild ec.temp run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Enemy status has expired. Peace restored.",color:"green"}]

# Remove first and recurse
data remove storage evercraft:guild temp.enemy_check[0]
function evercraft:guild/diplomacy/cleanup_enemies_iter
