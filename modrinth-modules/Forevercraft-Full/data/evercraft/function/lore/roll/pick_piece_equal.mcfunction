# Lore Roll: Equal-weight piece selection (Common/Uncommon sets)
# #lore_pieces ec.temp has piece count. Result: ec.lore_piece_id (1-based)

# max = pieces count
scoreboard players operation #lore_max ec.temp = #lore_pieces ec.temp
execute store result storage evercraft:lore temp.max_piece int 1 run scoreboard players get #lore_max ec.temp
function evercraft:lore/roll/random_piece with storage evercraft:lore temp
