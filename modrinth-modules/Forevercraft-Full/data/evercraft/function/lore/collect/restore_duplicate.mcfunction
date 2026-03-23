# Lore Collect: Restore consumed physical item (it was a duplicate)
# Item was destroyed by consumption — give it back via loot table
$loot give @s loot evercraft:lore/sets/s$(set_idx)/p$(piece_idx)
tellraw @s [{"text":"[Lore] ","color":"gold"},{"text":"Already collected!","color":"yellow"},{"text":" Trade it to another player instead.","color":"gray","italic":true}]
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.5
