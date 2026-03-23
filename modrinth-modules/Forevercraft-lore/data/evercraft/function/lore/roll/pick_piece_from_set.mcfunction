# Lore Roll: Pick a piece from the selected set
# ec.lore_set_id has the set index. Result: ec.lore_piece_id (1-based)
# For Rare+ sets (rarity >= 3): last piece is 16x rarer than others
# For Common/Uncommon: equal weight

# Read set metadata
execute store result storage evercraft:lore temp.set_id int 1 run scoreboard players get @s ec.lore_set_id
function evercraft:lore/roll/read_set_meta with storage evercraft:lore temp

# Get piece count and rarity from storage
execute store result score #lore_pieces ec.temp run data get storage evercraft:lore temp.set_meta.pieces
execute store result score @s ec.lore_rarity run data get storage evercraft:lore temp.set_meta.rarity

# Common/Uncommon (rarity 1-2): equal weight, roll 1..pieces
execute if score @s ec.lore_rarity matches 1..2 run function evercraft:lore/roll/pick_piece_equal

# Rare+ (rarity 3-6): 16x rare mechanic
execute if score @s ec.lore_rarity matches 3..6 run function evercraft:lore/roll/pick_piece_rare
