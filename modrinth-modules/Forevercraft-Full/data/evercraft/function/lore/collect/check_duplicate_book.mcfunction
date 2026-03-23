# Lore Collect: Check if book piece is already collected (macro)
# If duplicate: notify (book stays in inventory for trading). If new: add to collection.
$execute if entity @s[advancements={evercraft:lore/collected/s$(set_idx)/p$(piece_idx)=true}] run return run function evercraft:lore/collect/notify_duplicate
function evercraft:lore/collect/add_piece_book with storage evercraft:lore temp
