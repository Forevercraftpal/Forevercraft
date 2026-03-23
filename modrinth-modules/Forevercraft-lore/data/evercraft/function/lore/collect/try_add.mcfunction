# Lore Collect: Handle /trigger ec.lore_add (book's [Add to Collection] button)
# Run as player who triggered. ec.lore_add has the UID value.

# Decode: set_index = uid / 100, piece_id = uid % 100
scoreboard players operation @s ec.lore_set = @s ec.lore_add
scoreboard players operation @s ec.lore_set /= #100 ec.const
scoreboard players operation @s ec.lore_piece = @s ec.lore_add
scoreboard players operation @s ec.lore_piece %= #100 ec.const

# Store for macro dispatch
execute store result storage evercraft:lore temp.set_idx int 1 run scoreboard players get @s ec.lore_set
execute store result storage evercraft:lore temp.piece_idx int 1 run scoreboard players get @s ec.lore_piece
execute store result storage evercraft:lore temp.uid int 1 run scoreboard players get @s ec.lore_add

# Check duplicate and process
function evercraft:lore/collect/check_duplicate_book with storage evercraft:lore temp
