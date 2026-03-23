# Dream Surge Event — Harvest Crate Roll (Ornate+ only)
# Called when a lower-tier harvest crate is upgraded during event
# Distribution: Ornate 70%, Exquisite 28%, Mythical 2%

# Check inventory space before crate roll
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Roll 1-1000
execute store result score #roll ec.temp run random value 1..1000

# Default: Ornate (1-700)
execute if score #roll ec.temp matches 1..700 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/ornate/dummy
execute if score #roll ec.temp matches 1..700 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/ornate/1
# Exquisite (701-980)
execute if score #roll ec.temp matches 701..980 if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/exquisite/dummy
execute if score #roll ec.temp matches 701..980 if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/exquisite/1
# Mythical (981-1000 = 2%)
execute if score #roll ec.temp matches 981.. if score #inv_full ec.var matches 0 run loot give @s loot evercraft:harvest/gameplay/harvest/crates/mythical/dummy
execute if score #roll ec.temp matches 981.. if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:harvest/gameplay/harvest/crates/mythical/1

execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5

# Achievement: Surge Surfer — count crates during surge
scoreboard players add @s ach.surge_crates 1
execute if score @s ach.surge_crates matches 10.. unless entity @s[advancements={evercraft:alternate/secrets/surge_surfer=true}] run advancement grant @s only evercraft:alternate/secrets/surge_surfer
