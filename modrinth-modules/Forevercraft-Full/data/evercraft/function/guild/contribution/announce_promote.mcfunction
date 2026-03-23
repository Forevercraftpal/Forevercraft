# Guild — Announce rank promotion
# @s = promoted player, #guild_new_rank ec.temp = new rank number

# Store rank name to storage for macro tellraw
execute if score #guild_new_rank ec.temp matches 2 run data modify storage evercraft:guild temp.rank_name set value "Member"
execute if score #guild_new_rank ec.temp matches 3 run data modify storage evercraft:guild temp.rank_name set value "Aide"
execute if score #guild_new_rank ec.temp matches 4 run data modify storage evercraft:guild temp.rank_name set value "Representative"
execute if score #guild_new_rank ec.temp matches 5 run data modify storage evercraft:guild temp.rank_name set value "Administrator"
execute if score #guild_new_rank ec.temp matches 6 run data modify storage evercraft:guild temp.rank_name set value "Dedicated"
execute if score #guild_new_rank ec.temp matches 7 run data modify storage evercraft:guild temp.rank_name set value "Valorous"

function evercraft:guild/contribution/announce_promote_macro with storage evercraft:guild temp
