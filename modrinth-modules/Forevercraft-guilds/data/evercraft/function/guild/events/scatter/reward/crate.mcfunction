# Guild Scatter Node Reward — Crate (uncommon-rare tier)
# @s = player who clicked node

# Roll 1-2: 1 = uncommon, 2 = rare
execute unless predicate {"condition":"minecraft:random_chance","chance":0.5} run return run function evercraft:guild/events/scatter/reward/crate_rare

# Uncommon crate
give @s minecraft:barrel[custom_name={text:"Uncommon Crate",color:"green",italic:false},lore=[{text:"Guild Scatter Reward",color:"gray",italic:false},{text:"Contains: Uncommon tier loot",color:"dark_gray",italic:false},{text:"Right-click to open",color:"yellow",italic:false}],container_loot={loot_table:"evercraft:treasure/chests/default/uncommon",seed:0}] 1
playsound minecraft:block.chest.open player @s ~ ~ ~ 0.5 1.2
tellraw @s [{text:"[Guild] ",color:"green"},{text:"You found an ",color:"gray"},{text:"Uncommon Crate",color:"green"},{text:"!",color:"gray"}]
function evercraft:guild/contribution/add {amount:8}
