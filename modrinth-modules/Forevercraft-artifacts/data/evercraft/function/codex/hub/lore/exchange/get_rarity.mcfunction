# Lore Exchange — Get rarity from set metadata (macro)
# Called with: {set_id: <int>}
# Stores rarity (1-6) into lx.temp scoreboard

$execute store result score @s lx.temp run data get storage evercraft:lore sets.s$(set_id).rarity
