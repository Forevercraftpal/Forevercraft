# Infinite Castle — Roll one crate from coins (recursive, silent)
# Run as: player with ic.coins >= 1
# Same tier distribution as mob crates:
# Common 58%, Uncommon 25%, Rare 10%, Ornate 5%, Exquisite 1.5%, Mythical 0.5%

# Check inventory fullness once per roll
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Roll tier
execute store result score #ic_tier ec.var run random value 1..1000

# Give crate + count tier (drop at feet if inventory full)
execute if score #ic_tier ec.var matches 996..1000 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/mythical
execute if score #ic_tier ec.var matches 996..1000 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/mythical
execute if score #ic_tier ec.var matches 996..1000 run scoreboard players add #ic_t_mythical ec.var 1

execute if score #ic_tier ec.var matches 981..995 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/exquisite
execute if score #ic_tier ec.var matches 981..995 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/exquisite
execute if score #ic_tier ec.var matches 981..995 run scoreboard players add #ic_t_exquisite ec.var 1

execute if score #ic_tier ec.var matches 931..980 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/ornate
execute if score #ic_tier ec.var matches 931..980 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/ornate
execute if score #ic_tier ec.var matches 931..980 run scoreboard players add #ic_t_ornate ec.var 1

execute if score #ic_tier ec.var matches 831..930 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/rare
execute if score #ic_tier ec.var matches 831..930 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/rare
execute if score #ic_tier ec.var matches 831..930 run scoreboard players add #ic_t_rare ec.var 1

execute if score #ic_tier ec.var matches 581..830 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/uncommon
execute if score #ic_tier ec.var matches 581..830 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/uncommon
execute if score #ic_tier ec.var matches 581..830 run scoreboard players add #ic_t_uncommon ec.var 1

execute if score #ic_tier ec.var matches 1..580 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:crates/items/common
execute if score #ic_tier ec.var matches 1..580 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:crates/items/common
execute if score #ic_tier ec.var matches 1..580 run scoreboard players add #ic_t_common ec.var 1

# Notify once if items were dropped
execute if score #inv_full ec.var matches 1 unless score #ic_drop_warned ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Crates dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 unless score #ic_drop_warned ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
execute if score #inv_full ec.var matches 1 run scoreboard players set #ic_drop_warned ec.var 1

# Decrement and recurse
scoreboard players remove @s ic.coins 1
execute if score @s ic.coins matches 1.. run function evercraft:castle/tally_roll
