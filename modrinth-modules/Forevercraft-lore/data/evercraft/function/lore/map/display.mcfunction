# Lore Collection Map — /trigger ec.lore_map
# Shows per-dimension completion totals and in-progress sets
# Run as: the triggering player

# === HEADER ===
tellraw @s ""
tellraw @s [{text:"  "},{text:"═══ Lore Collection Map ═══",color:"gold"}]
tellraw @s ""

# Total
tellraw @s [{text:"   "},{text:"Total: ",color:"gray"},{score:{name:"@s",objective:"ec.lore_sets_done"},color:"gold",bold:true},{text:"/162 sets complete",color:"gray"}]
tellraw @s ""

# Per-dimension breakdown
tellraw @s [{text:"   "},{text:"☀ ",color:"yellow"},{text:"Overworld: ",color:"green"},{score:{name:"@s",objective:"ec.lore_dim0_done"},color:"yellow"},{text:"/81",color:"gray"}]
tellraw @s [{text:"   "},{text:"🔥 ",color:"red"},{text:"Nether: ",color:"red"},{score:{name:"@s",objective:"ec.lore_dim1_done"},color:"yellow"},{text:"/30",color:"gray"}]
tellraw @s [{text:"   "},{text:"🌌 ",color:"dark_purple"},{text:"The End: ",color:"dark_purple"},{score:{name:"@s",objective:"ec.lore_dim2_done"},color:"yellow"},{text:"/27",color:"gray"}]
tellraw @s [{text:"   "},{text:"📜 ",color:"aqua"},{text:"Lore Pages: ",color:"aqua"},{score:{name:"@s",objective:"ec.lore_dim3_done"},color:"yellow"},{text:"/24",color:"gray"}]

# === IN-PROGRESS SCAN ===
# Initialize scan counter and shown counter
scoreboard players set #lore_scan ec.temp 1
scoreboard players set #lore_shown ec.temp 0

tellraw @s ""
tellraw @s [{text:"   "},{text:"In Progress:",color:"yellow",bold:true}]

# Run recursive scan (checks sets 1-162, shows up to 10 in-progress)
function evercraft:lore/map/scan

# If none found, show hint
execute if score #lore_shown ec.temp matches 0 run tellraw @s [{text:"    "},{text:"No sets in progress — go explore!",color:"dark_gray",italic:true}]

# If capped at 10
execute if score #lore_shown ec.temp matches 10 run tellraw @s [{text:"    "},{text:"... and more. Use the Codex for details!",color:"dark_gray",italic:true}]

tellraw @s ""

# Sound
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 1.2
