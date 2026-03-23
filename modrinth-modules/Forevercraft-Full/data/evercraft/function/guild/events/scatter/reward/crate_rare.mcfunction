# Guild Scatter Node Reward — Rare Crate (50% chance from crate roll)
# @s = player who clicked node

give @s minecraft:barrel[custom_name={text:"Rare Crate",color:"aqua",italic:false},lore=[{text:"Guild Scatter Reward",color:"gray",italic:false},{text:"Contains: Rare tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot={loot_table:"evercraft:treasure/chests/default/rare",seed:0}] 1
playsound minecraft:block.chest.open player @s ~ ~ ~ 0.5 1.0
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You found a ",color:"gray"},{text:"Rare Crate",color:"aqua"},{text:"!",color:"gray"}]
function evercraft:guild/contribution/add {amount:12}
