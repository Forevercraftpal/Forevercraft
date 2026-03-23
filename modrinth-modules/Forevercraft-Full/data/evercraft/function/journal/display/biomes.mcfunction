# ============================================================
# Journal Display — Biomes Page
# Shows all 25 biomes grouped by region
# ============================================================

tellraw @s ""
tellraw @s [{text:"═══ ",color:"gold"},{text:"BIOMES",color:"gold",bold:true},{text:" (",color:"gold"},{score:{name:"@s",objective:"jn.biome_count"},color:"white"},{text:"/25) ═══",color:"gold"}]
tellraw @s ""

# --- OVERWORLD SURFACE (16 biomes) ---
tellraw @s [{text:"  ▸ Overworld Surface",color:"green",bold:true}]

execute if entity @s[tag=jn.b0] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Plains",color:"white"}]
execute unless entity @s[tag=jn.b0] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Plains",color:"dark_gray"}]
execute if entity @s[tag=jn.b1] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Forest",color:"white"}]
execute unless entity @s[tag=jn.b1] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Forest",color:"dark_gray"}]
execute if entity @s[tag=jn.b2] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Flower Forest",color:"white"}]
execute unless entity @s[tag=jn.b2] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Flower Forest",color:"dark_gray"}]
execute if entity @s[tag=jn.b3] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Dark Forest",color:"white"}]
execute unless entity @s[tag=jn.b3] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Dark Forest",color:"dark_gray"}]
execute if entity @s[tag=jn.b4] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Taiga",color:"white"}]
execute unless entity @s[tag=jn.b4] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Taiga",color:"dark_gray"}]
execute if entity @s[tag=jn.b5] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Mountains",color:"white"}]
execute unless entity @s[tag=jn.b5] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Mountains",color:"dark_gray"}]
execute if entity @s[tag=jn.b6] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Jungle",color:"white"}]
execute unless entity @s[tag=jn.b6] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Jungle",color:"dark_gray"}]
execute if entity @s[tag=jn.b7] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Desert",color:"white"}]
execute unless entity @s[tag=jn.b7] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Desert",color:"dark_gray"}]
execute if entity @s[tag=jn.b8] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Savanna",color:"white"}]
execute unless entity @s[tag=jn.b8] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Savanna",color:"dark_gray"}]
execute if entity @s[tag=jn.b9] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Ocean",color:"white"}]
execute unless entity @s[tag=jn.b9] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Ocean",color:"dark_gray"}]
execute if entity @s[tag=jn.b10] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"River",color:"white"}]
execute unless entity @s[tag=jn.b10] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"River",color:"dark_gray"}]
execute if entity @s[tag=jn.b11] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Swamp",color:"white"}]
execute unless entity @s[tag=jn.b11] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Swamp",color:"dark_gray"}]
execute if entity @s[tag=jn.b12] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Mushroom Island",color:"white"}]
execute unless entity @s[tag=jn.b12] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Mushroom Island",color:"dark_gray"}]
execute if entity @s[tag=jn.b13] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Ice Plains",color:"white"}]
execute unless entity @s[tag=jn.b13] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Ice Plains",color:"dark_gray"}]
execute if entity @s[tag=jn.b14] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Badlands",color:"white"}]
execute unless entity @s[tag=jn.b14] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Badlands",color:"dark_gray"}]
execute if entity @s[tag=jn.b24] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Pale Garden",color:"white"}]
execute unless entity @s[tag=jn.b24] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Pale Garden",color:"dark_gray"}]

tellraw @s ""

# --- OVERWORLD CAVES (3 biomes) ---
tellraw @s [{text:"  ▸ Overworld Caves",color:"dark_gray",bold:true}]

execute if entity @s[tag=jn.b15] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Lush Caves",color:"white"}]
execute unless entity @s[tag=jn.b15] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Lush Caves",color:"dark_gray"}]
execute if entity @s[tag=jn.b16] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Dripstone Caves",color:"white"}]
execute unless entity @s[tag=jn.b16] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Dripstone Caves",color:"dark_gray"}]
execute if entity @s[tag=jn.b17] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Deep Dark",color:"white"}]
execute unless entity @s[tag=jn.b17] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Deep Dark",color:"dark_gray"}]

tellraw @s ""

# --- NETHER (5 biomes) ---
tellraw @s [{text:"  ▸ Nether",color:"red",bold:true}]

execute if entity @s[tag=jn.b18] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Nether Wastes",color:"white"}]
execute unless entity @s[tag=jn.b18] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Nether Wastes",color:"dark_gray"}]
execute if entity @s[tag=jn.b19] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Crimson Forest",color:"white"}]
execute unless entity @s[tag=jn.b19] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Crimson Forest",color:"dark_gray"}]
execute if entity @s[tag=jn.b20] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Warped Forest",color:"white"}]
execute unless entity @s[tag=jn.b20] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Warped Forest",color:"dark_gray"}]
execute if entity @s[tag=jn.b21] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Basalt Deltas",color:"white"}]
execute unless entity @s[tag=jn.b21] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Basalt Deltas",color:"dark_gray"}]
execute if entity @s[tag=jn.b22] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Soul Sand Valley",color:"white"}]
execute unless entity @s[tag=jn.b22] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Soul Sand Valley",color:"dark_gray"}]

tellraw @s ""

# --- THE END (1 biome) ---
tellraw @s [{text:"  ▸ The End",color:"dark_purple",bold:true}]

execute if entity @s[tag=jn.b23] run tellraw @s [{text:"    ✓ ",color:"green"},{text:"The End",color:"white"}]
execute unless entity @s[tag=jn.b23] run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"The End",color:"dark_gray"}]

tellraw @s ""
tellraw @s [{text:"  ",color:"gray"},{text:"[Back to Journal]",color:"aqua",click_event:{action:run_command,command:"/trigger jn.view set 1"},hover_event:{action:show_text,value:"Return to overview"}}]
tellraw @s [{text:"═══════════════════════════",color:"gold"}]

playsound minecraft:item.book.page_turn player @s ~ ~ ~ 0.5 1.0
