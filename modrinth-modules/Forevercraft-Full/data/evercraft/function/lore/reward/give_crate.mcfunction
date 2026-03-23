# Lore Reward: Give a crate item matching set rarity
# Rarity 1=Common, 2=Uncommon, 3=Rare, 4=Ornate, 5=Exquisite, 6=Mythical

# Check inventory space before giving crate
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

# Inventory has space — give directly
execute if score #inv_full ec.var matches 0 if score @s ec.lore_rarity matches 1 run give @s barrel[custom_name={text:"Common Lore Crate",color:"white",italic:false},lore=[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Common tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot={loot_table:"evercraft:treasure/chests/default/common",seed:0}] 1

execute if score #inv_full ec.var matches 0 if score @s ec.lore_rarity matches 2 run give @s barrel[custom_name={text:"Uncommon Lore Crate",color:"green",italic:false},lore=[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Uncommon tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot={loot_table:"evercraft:treasure/chests/default/uncommon",seed:0}] 1

execute if score #inv_full ec.var matches 0 if score @s ec.lore_rarity matches 3 run give @s barrel[custom_name={text:"Rare Lore Crate",color:"aqua",italic:false},lore=[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Rare tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot={loot_table:"evercraft:treasure/chests/default/rare",seed:0}] 1

execute if score #inv_full ec.var matches 0 if score @s ec.lore_rarity matches 4 run give @s barrel[custom_name={text:"Ornate Lore Crate",color:"dark_purple",italic:false},lore=[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Ornate tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot={loot_table:"evercraft:treasure/chests/default/ornate",seed:0}] 1

execute if score #inv_full ec.var matches 0 if score @s ec.lore_rarity matches 5 run give @s barrel[custom_name={text:"Exquisite Lore Crate",color:"light_purple",italic:false},lore=[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Exquisite tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot={loot_table:"evercraft:treasure/chests/default/exquisite",seed:0}] 1

execute if score #inv_full ec.var matches 0 if score @s ec.lore_rarity matches 6 run give @s barrel[custom_name={text:"Mythical Lore Crate",color:"gold",italic:false},lore=[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Mythical tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot={loot_table:"evercraft:treasure/chests/default/mythical",seed:0}] 1

# Inventory full — drop at feet
execute if score #inv_full ec.var matches 1 if score @s ec.lore_rarity matches 1 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:barrel",count:1,components:{custom_name:{text:"Common Lore Crate",color:"white",italic:false},lore:[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Common tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot:{loot_table:"evercraft:treasure/chests/default/common",seed:0}}},PickupDelay:0s}

execute if score #inv_full ec.var matches 1 if score @s ec.lore_rarity matches 2 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:barrel",count:1,components:{custom_name:{text:"Uncommon Lore Crate",color:"green",italic:false},lore:[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Uncommon tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot:{loot_table:"evercraft:treasure/chests/default/uncommon",seed:0}}},PickupDelay:0s}

execute if score #inv_full ec.var matches 1 if score @s ec.lore_rarity matches 3 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:barrel",count:1,components:{custom_name:{text:"Rare Lore Crate",color:"aqua",italic:false},lore:[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Rare tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot:{loot_table:"evercraft:treasure/chests/default/rare",seed:0}}},PickupDelay:0s}

execute if score #inv_full ec.var matches 1 if score @s ec.lore_rarity matches 4 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:barrel",count:1,components:{custom_name:{text:"Ornate Lore Crate",color:"dark_purple",italic:false},lore:[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Ornate tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot:{loot_table:"evercraft:treasure/chests/default/ornate",seed:0}}},PickupDelay:0s}

execute if score #inv_full ec.var matches 1 if score @s ec.lore_rarity matches 5 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:barrel",count:1,components:{custom_name:{text:"Exquisite Lore Crate",color:"light_purple",italic:false},lore:[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Exquisite tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot:{loot_table:"evercraft:treasure/chests/default/exquisite",seed:0}}},PickupDelay:0s}

execute if score #inv_full ec.var matches 1 if score @s ec.lore_rarity matches 6 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:barrel",count:1,components:{custom_name:{text:"Mythical Lore Crate",color:"gold",italic:false},lore:[{text:"Lore Set Reward",color:"gray",italic:false},{text:"Contains: Mythical tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot:{loot_table:"evercraft:treasure/chests/default/mythical",seed:0}}},PickupDelay:0s}

# Warn if inventory was full
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your lore crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
