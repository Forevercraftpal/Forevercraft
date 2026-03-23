# Utility: Give a Quest Crate barrel item with inv-full handling (macro)
# Usage: function evercraft:util/give_quest_crate {tier:"rare"}
# Run as: the receiving player (must have position context via 'at @s')
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full
$execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/$(tier)
$execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/$(tier)
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
