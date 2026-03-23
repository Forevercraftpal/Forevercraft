# Lore Collect: Add book piece to collection (macro)
# Remove the book from inventory, grant advancement, update counter
$clear @s written_book[custom_data~{lore_uid:$(uid)}] 1
$advancement grant @s only evercraft:lore/collected/s$(set_idx)/p$(piece_idx)

# Increment set counter
function evercraft:lore/collect/increment_set with storage evercraft:lore temp

tellraw @s [{"text":"[Lore] ","color":"gold"},{"text":"Fragment added to your collection!","color":"green"}]
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 0.6 1.4
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 0.8
particle minecraft:end_rod ~ ~1 ~ 0.2 0.3 0.2 0.02 8

# Check set completion
function evercraft:lore/collect/check_complete with storage evercraft:lore temp
