# Lore Roll: 16x rare piece selection (Rare+ sets)
# Pieces 1 through (N-1) have weight 16 each, piece N has weight 1
# Total pool = (N-1)*16 + 1. If roll > (N-1)*16, it's the rare piece.
# #lore_pieces ec.temp has piece count

# Calculate total pool: (pieces-1)*16 + 1
scoreboard players operation #lore_pool_total ec.temp = #lore_pieces ec.temp
scoreboard players remove #lore_pool_total ec.temp 1
scoreboard players operation #lore_pool_total ec.temp *= #16 ec.const
scoreboard players add #lore_pool_total ec.temp 1

# Roll 1..total
execute store result storage evercraft:lore temp.pool_total int 1 run scoreboard players get #lore_pool_total ec.temp
function evercraft:lore/roll/random_pool_total with storage evercraft:lore temp

# If roll > (total - 1), it's the rare piece (last one)
scoreboard players operation #lore_threshold ec.temp = #lore_pool_total ec.temp
scoreboard players remove #lore_threshold ec.temp 1
execute if score #lore_rare_roll ec.temp > #lore_threshold ec.temp run scoreboard players operation @s ec.lore_piece_id = #lore_pieces ec.temp
execute if score #lore_rare_roll ec.temp > #lore_threshold ec.temp run return 0

# Otherwise: piece_id = ((roll-1) / 16) + 1
scoreboard players operation @s ec.lore_piece_id = #lore_rare_roll ec.temp
scoreboard players remove @s ec.lore_piece_id 1
scoreboard players operation @s ec.lore_piece_id /= #16 ec.const
scoreboard players add @s ec.lore_piece_id 1
