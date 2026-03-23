# Downgrade Ornate → Rare Fishing Crate (Dream Rate < 5)
tellraw @s [{text:"✦ ",color:"dark_purple"},{text:"An ornate crate shimmered but faded... your dreams aren't strong enough yet.",color:"gray",italic:true}]
tellraw @s [{text:"  Requires ",color:"gray"},{text:"Dream Rate 5",color:"gold",bold:true},{text:" to receive Ornate crates. Use ",color:"gray"},{text:"/trigger ec.dreams",color:"aqua"},{text:" to check.",color:"gray"}]
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1 0.5

scoreboard players add crates_fished fc.global_stats 1
scoreboard players add @s fc.total_crates 1
scoreboard players add rare_crates fc.global_stats 1
scoreboard players add @s fc.rare 1

# Check inventory space
execute store result score #inv_full ec.var run function evercraft:util/check_inv_full

execute if score #inv_full ec.var matches 0 run loot give @s loot evercraft:fishing/gameplay/fishing/crates/rare/1
execute if score #inv_full ec.var matches 1 at @s run loot spawn ~ ~ ~ loot evercraft:fishing/gameplay/fishing/crates/rare/1
execute if score #inv_full ec.var matches 1 run tellraw @s [{text:"[!] ",color:"red"},{text:"Inventory full! Your fishing crate was dropped at your feet.",color:"yellow"}]
execute if score #inv_full ec.var matches 1 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5
