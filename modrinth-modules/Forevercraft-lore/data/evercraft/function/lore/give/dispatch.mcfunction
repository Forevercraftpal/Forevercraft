# Lore Give: Dispatch — give the rolled piece to the player via loot table
# Run as player. Uses ec.lore_set_id and ec.lore_piece_id.

# Store for macro
execute store result storage evercraft:lore temp.set_id int 1 run scoreboard players get @s ec.lore_set_id
execute store result storage evercraft:lore temp.piece_id int 1 run scoreboard players get @s ec.lore_piece_id

# Give via loot table
function evercraft:lore/give/give_item with storage evercraft:lore temp
