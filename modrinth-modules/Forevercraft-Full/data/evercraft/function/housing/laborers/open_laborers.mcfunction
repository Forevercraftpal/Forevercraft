# ============================================================
# Laborers Sub-Menu — Open (hire page)
# Run as: player with HS.InMenu, at player
# Kills main menu elements, spawns laborer hire/manage page
# ============================================================

# Kill ALL main menu elements (including background — laborers uses its own)
kill @e[type=text_display,tag=HS.MenuEl,distance=..7]
kill @e[type=interaction,tag=HS.MenuEl,distance=..7]
kill @e[type=item_display,tag=HS.MenuEl,distance=..7]

# Tag player as in laborers sub-menu
tag @s add HS.InLaborers

# Calculate max slots from Artisan Rank
scoreboard players set #lb_max_slots ec.temp 0
execute if score @s ec.cf_rank matches 10.. run scoreboard players set #lb_max_slots ec.temp 1
execute if score @s ec.cf_rank matches 30.. run scoreboard players set #lb_max_slots ec.temp 2
execute if score @s ec.cf_rank matches 50.. run scoreboard players set #lb_max_slots ec.temp 3
execute if score @s ec.cf_rank matches 70.. run scoreboard players set #lb_max_slots ec.temp 4
execute if score @s ec.cf_rank matches 90.. run scoreboard players set #lb_max_slots ec.temp 5
scoreboard players operation @s ec.lb_max = #lb_max_slots ec.temp

# === BACKGROUND PANEL (wider for laborer list) ===
execute rotated ~ 0 positioned ^ ^1.65 ^1.8 run summon item_display ~ ~ ~ { Tags:["HS.MenuEl","HS.LaborersBG","HS.LaborersEl"], billboard:"center", item:{id:"black_stained_glass_pane",count:1}, item_display:"fixed", transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.2f,3.0f,0.01f]} }

# === TITLE ===
execute rotated ~ 0 positioned ^ ^2.85 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl"], billboard:"center", text:[{text:"\u2726 ",color:"#AB47BC"},{text:"Laborers",color:"#CE93D8",bold:true},{text:" \u2726",color:"#AB47BC"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.54f,0.54f,0.54f]} }

# === SLOTS LINE (refreshable — shows X/Y slots used) ===
execute rotated ~ 0 positioned ^ ^2.65 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbSlots"], billboard:"center", text:{text:"Loading...",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }

# === HIRE SECTION HEADER ===
execute rotated ~ 0 positioned ^ ^2.45 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl"], billboard:"center", text:{text:"— Hire a Laborer —",color:"gray",italic:true}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# === HIRE BUTTONS (2 columns x 3 rows) ===
# Left column: ^-0.4   Right column: ^0.4

# --- LEFT COLUMN ---

# L1: Miner (Rank 10, 16 emeralds)
execute rotated ~ 0 positioned ^-0.4 ^2.25 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireMiner"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"\u26cf Miner",color:"#FFB74D"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^-0.4 ^2.17 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireMinerBtn"], width:0.55f,height:0.1f,response:1b }
execute rotated ~ 0 positioned ^-0.4 ^2.12 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl"], billboard:"center", text:[{text:"16",color:"green"},{text:"\u00a7r ",color:"gray"},{text:"emeralds",color:"dark_gray"},{text:" \u2022 Rank 10",color:"gray"}], background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# L2: Farmer (Rank 10, 16 emeralds)
execute rotated ~ 0 positioned ^-0.4 ^1.95 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireFarmer"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"\u2618 Farmer",color:"#66BB6A"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^-0.4 ^1.87 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireFarmerBtn"], width:0.55f,height:0.1f,response:1b }
execute rotated ~ 0 positioned ^-0.4 ^1.82 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl"], billboard:"center", text:[{text:"16",color:"green"},{text:" emeralds",color:"dark_gray"},{text:" \u2022 Rank 10",color:"gray"}], background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# L3: Fisher (Rank 10, 16 emeralds)
execute rotated ~ 0 positioned ^-0.4 ^1.65 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireFisher"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"\u2693 Fisher",color:"#4FC3F7"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^-0.4 ^1.57 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireFisherBtn"], width:0.55f,height:0.1f,response:1b }
execute rotated ~ 0 positioned ^-0.4 ^1.52 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl"], billboard:"center", text:[{text:"16",color:"green"},{text:" emeralds",color:"dark_gray"},{text:" \u2022 Rank 10",color:"gray"}], background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# --- RIGHT COLUMN ---

# R1: Woodcutter (Rank 20, 24 emeralds)
execute rotated ~ 0 positioned ^0.4 ^2.25 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireWoodcutter"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"\u2694 Woodcutter",color:"#8D6E63"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^0.4 ^2.17 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireWoodcutterBtn"], width:0.55f,height:0.1f,response:1b }
execute rotated ~ 0 positioned ^0.4 ^2.12 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl"], billboard:"center", text:[{text:"24",color:"green"},{text:" emeralds",color:"dark_gray"},{text:" \u2022 Rank 20",color:"gray"}], background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# R2: Forager (Rank 20, 24 emeralds)
execute rotated ~ 0 positioned ^0.4 ^1.95 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireForager"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"\u2767 Forager",color:"#9CCC65"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^0.4 ^1.87 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireForagerBtn"], width:0.55f,height:0.1f,response:1b }
execute rotated ~ 0 positioned ^0.4 ^1.82 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl"], billboard:"center", text:[{text:"24",color:"green"},{text:" emeralds",color:"dark_gray"},{text:" \u2022 Rank 20",color:"gray"}], background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# R3: Prospector (Rank 50, 48 emeralds + 1 netherite)
execute rotated ~ 0 positioned ^0.4 ^1.65 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireProspector"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"\u2737 Prospector",color:"gold"},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }
execute rotated ~ 0 positioned ^0.4 ^1.57 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.LaborersEl","HS.LbHireProspectorBtn"], width:0.55f,height:0.1f,response:1b }
execute rotated ~ 0 positioned ^0.4 ^1.52 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl"], billboard:"center", text:[{text:"48",color:"green"},{text:" em + ",color:"dark_gray"},{text:"1 netherite",color:"dark_aqua"},{text:" \u2022 Rank 50",color:"gray"}], background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.243f,0.243f,0.243f]} }

# === STATUS LINE (refreshable — shows feedback messages) ===
execute rotated ~ 0 positioned ^ ^1.35 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbStatus"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# === ACTIVE LABORERS HEADER ===
execute rotated ~ 0 positioned ^ ^1.18 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl"], billboard:"center", text:{text:"— Active Laborers —",color:"gray",italic:true}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# === ACTIVE LABORER SLOTS (5 refreshable lines) ===
execute rotated ~ 0 positioned ^ ^1.02 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbActive1"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^ ^0.9 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbActive2"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^ ^0.78 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbActive3"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^ ^0.66 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbActive4"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }
execute rotated ~ 0 positioned ^ ^0.54 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbActive5"], billboard:"center", text:{text:"",color:"gray"}, background:0,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]} }

# === BACK BUTTON (centered below) ===
execute rotated ~ 0 positioned ^ ^0.4 ^1.78 run summon text_display ~ ~ ~ { brightness:{block:15,sky:15},shadow_radius:0f, Tags:["HS.MenuEl","HS.LaborersEl","HS.LbBackTxt"], billboard:"center", text:[{text:"[ ",color:"dark_gray"},{text:"Back",color:"gray",bold:true},{text:" ]",color:"dark_gray"}], background:1,shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute rotated ~ 0 positioned ^ ^0.3 ^1.8 run summon interaction ~ ~ ~ { Tags:["HS.MenuEl","HS.LaborersEl","HS.LbBackBtn"], width:0.4f,height:0.12f,response:1b }

# Refresh to show current laborer states
execute at @s run function evercraft:housing/laborers/refresh_laborers

# Sound
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.4 1.0
