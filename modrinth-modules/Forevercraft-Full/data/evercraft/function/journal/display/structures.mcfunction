# ============================================================
# Journal Display — Structures Page
# Shows all 18 vanilla structure types grouped by tier
# ============================================================

tellraw @s ""
tellraw @s [{text:"═══ ",color:"gold"},{text:"STRUCTURES",color:"gold",bold:true},{text:" (",color:"gold"},{score:{name:"@s",objective:"jn.struct_count"},color:"white"},{text:"/18) ═══",color:"gold"}]
tellraw @s ""

# --- ORNATE (Tier 4) ---
tellraw @s [{text:"  ▸ Ornate",color:"gold",bold:true}]

execute if score @s ec.struct_1 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Ancient City",color:"gold"}]
execute unless score @s ec.struct_1 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Ancient City",color:"dark_gray"}]
execute if score @s ec.struct_2 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"End City",color:"gold"}]
execute unless score @s ec.struct_2 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"End City",color:"dark_gray"}]
execute if score @s ec.struct_6 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Bastion Remnant",color:"gold"}]
execute unless score @s ec.struct_6 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Bastion Remnant",color:"dark_gray"}]

tellraw @s ""

# --- RARE (Tier 3) ---
tellraw @s [{text:"  ▸ Rare",color:"blue",bold:true}]

execute if score @s ec.struct_3 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Trial Chambers",color:"blue"}]
execute unless score @s ec.struct_3 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Trial Chambers",color:"dark_gray"}]
execute if score @s ec.struct_4 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Stronghold",color:"blue"}]
execute unless score @s ec.struct_4 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Stronghold",color:"dark_gray"}]
execute if score @s ec.struct_5 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Woodland Mansion",color:"blue"}]
execute unless score @s ec.struct_5 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Woodland Mansion",color:"dark_gray"}]
execute if score @s ec.struct_7 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Nether Fortress",color:"blue"}]
execute unless score @s ec.struct_7 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Nether Fortress",color:"dark_gray"}]
execute if score @s ec.struct_8 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Ocean Monument",color:"blue"}]
execute unless score @s ec.struct_8 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Ocean Monument",color:"dark_gray"}]

tellraw @s ""

# --- UNCOMMON (Tier 2) ---
tellraw @s [{text:"  ▸ Uncommon",color:"green",bold:true}]

execute if score @s ec.struct_9 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Desert Pyramid",color:"green"}]
execute unless score @s ec.struct_9 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Desert Pyramid",color:"dark_gray"}]
execute if score @s ec.struct_10 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Jungle Pyramid",color:"green"}]
execute unless score @s ec.struct_10 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Jungle Pyramid",color:"dark_gray"}]
execute if score @s ec.struct_17 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Mineshaft",color:"green"}]
execute unless score @s ec.struct_17 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Mineshaft",color:"dark_gray"}]

tellraw @s ""

# --- COMMON (Tier 1) ---
tellraw @s [{text:"  ▸ Common",color:"white",bold:true}]

execute if score @s ec.struct_11 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Shipwreck",color:"white"}]
execute unless score @s ec.struct_11 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Shipwreck",color:"dark_gray"}]
execute if score @s ec.struct_12 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Ocean Ruin",color:"white"}]
execute unless score @s ec.struct_12 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Ocean Ruin",color:"dark_gray"}]
execute if score @s ec.struct_13 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Igloo",color:"white"}]
execute unless score @s ec.struct_13 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Igloo",color:"dark_gray"}]
execute if score @s ec.struct_14 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Pillager Outpost",color:"white"}]
execute unless score @s ec.struct_14 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Pillager Outpost",color:"dark_gray"}]
execute if score @s ec.struct_15 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Trail Ruins",color:"white"}]
execute unless score @s ec.struct_15 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Trail Ruins",color:"dark_gray"}]
execute if score @s ec.struct_16 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Village",color:"white"}]
execute unless score @s ec.struct_16 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Village",color:"dark_gray"}]
execute if score @s ec.struct_18 matches 1 run tellraw @s [{text:"    ✓ ",color:"green"},{text:"Ruined Portal",color:"white"}]
execute unless score @s ec.struct_18 matches 1 run tellraw @s [{text:"    ? ",color:"dark_gray"},{text:"Ruined Portal",color:"dark_gray"}]

tellraw @s ""
tellraw @s [{text:"  ",color:"gray"},{text:"[Back to Journal]",color:"aqua",click_event:{action:run_command,command:"/trigger jn.view set 1"},hover_event:{action:show_text,value:"Return to overview"}}]
tellraw @s [{text:"═══════════════════════════",color:"gold"}]

playsound minecraft:item.book.page_turn player @s ~ ~ ~ 0.5 1.0
