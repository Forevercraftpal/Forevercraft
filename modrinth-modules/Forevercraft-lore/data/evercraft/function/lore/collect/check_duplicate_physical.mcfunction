# Lore Collect: Check if physical piece is already collected (macro)
# If duplicate: restore item + notify. If new: add to collection.
$execute if entity @s[advancements={evercraft:lore/collected/s$(set_idx)/p$(piece_idx)=true}] run return run function evercraft:lore/collect/restore_duplicate with storage evercraft:lore temp
function evercraft:lore/collect/add_piece_physical with storage evercraft:lore temp
