# ============================================================
# Journal Display — Overview Page
# ============================================================

# Calculate total discoveries
scoreboard players operation #jn_total jn.temp = @s jn.biome_count
scoreboard players operation #jn_total jn.temp += @s jn.struct_count
scoreboard players operation #jn_total jn.temp += @s jn.village_count
scoreboard players operation #jn_total jn.temp += @s jn.secret_count

# Count completed regions
scoreboard players set #jn_regions jn.temp 0
execute if score @s jn.region_ow matches 1 run scoreboard players add #jn_regions jn.temp 1
execute if score @s jn.region_cave matches 1 run scoreboard players add #jn_regions jn.temp 1
execute if score @s jn.region_neth matches 1 run scoreboard players add #jn_regions jn.temp 1
execute if score @s jn.region_end matches 1 run scoreboard players add #jn_regions jn.temp 1

tellraw @s ""
tellraw @s [{text:"═══ ",color:"gold"},{text:"EXPLORATION JOURNAL",color:"gold",bold:true},{text:" ═══",color:"gold"}]
tellraw @s ""

# Discovery counts with clickable [View] links
tellraw @s [{text:"  ◆ Biomes:      ",color:"dark_aqua"},{score:{name:"@s",objective:"jn.biome_count"},color:"white"},{text:"/25  ",color:"gray"},{text:"[View]",color:"aqua",click_event:{action:run_command,command:"/trigger jn.view set 2"},hover_event:{action:show_text,value:"View biome discoveries"}}]
tellraw @s [{text:"  ◆ Structures:  ",color:"dark_aqua"},{score:{name:"@s",objective:"jn.struct_count"},color:"white"},{text:"/18  ",color:"gray"},{text:"[View]",color:"aqua",click_event:{action:run_command,command:"/trigger jn.view set 3"},hover_event:{action:show_text,value:"View structure discoveries"}}]
tellraw @s [{text:"  ◆ Villages:    ",color:"dark_aqua"},{score:{name:"@s",objective:"jn.village_count"},color:"white"},{text:"       ",color:"gray"},{text:"[View]",color:"aqua",click_event:{action:run_command,command:"/trigger jn.view set 4"},hover_event:{action:show_text,value:"View village discoveries"}}]
tellraw @s [{text:"  ◆ Secrets:     ",color:"dark_aqua"},{score:{name:"@s",objective:"jn.secret_count"},color:"white"},{text:"/5   ",color:"gray"},{text:"[View]",color:"aqua",click_event:{action:run_command,command:"/trigger jn.view set 5"},hover_event:{action:show_text,value:"View secret discoveries"}}]
tellraw @s ""

# Region progress
tellraw @s [{text:"  ═ Region Progress: ",color:"gold"},{score:{name:"#jn_regions",objective:"jn.temp"},color:"white"},{text:"/4 ═",color:"gold"}]

# OW Surface
execute if score @s jn.region_ow matches 1 run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Overworld Surface",color:"green"},{text:"  +10% Speed, +1.0 DR",color:"dark_green"}]
execute if score @s jn.region_ow matches 0 run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"Overworld Surface",color:"gray"},{text:"  (all biomes + 8 structures)",color:"dark_gray"}]

# OW Caves
execute if score @s jn.region_cave matches 1 run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Overworld Caves",color:"green"},{text:"     +1.0 DR",color:"dark_green"}]
execute if score @s jn.region_cave matches 0 run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"Overworld Caves",color:"gray"},{text:"     (3 cave biomes)",color:"dark_gray"}]

# Nether
execute if score @s jn.region_neth matches 1 run tellraw @s [{text:"  ✓ ",color:"green"},{text:"Nether",color:"green"},{text:"              +1.0 DR",color:"dark_green"}]
execute if score @s jn.region_neth matches 0 run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"Nether",color:"gray"},{text:"              (5 biomes + 2 structures)",color:"dark_gray"}]

# The End
execute if score @s jn.region_end matches 1 run tellraw @s [{text:"  ✓ ",color:"green"},{text:"The End",color:"green"},{text:"             +2.0 DR",color:"dark_green"}]
execute if score @s jn.region_end matches 0 run tellraw @s [{text:"  ✗ ",color:"dark_gray"},{text:"The End",color:"gray"},{text:"             (End biome + End City)",color:"dark_gray"}]

tellraw @s ""
tellraw @s [{text:"  ",color:"gray"},{text:"[View Bonuses]",color:"light_purple",click_event:{action:run_command,command:"/trigger jn.view set 6"},hover_event:{action:show_text,value:"View active region bonuses"}},{text:"  "},{text:"[Realm Milestones]",color:"#E0B0FF",click_event:{action:run_command,command:"/trigger jn.view set 7"},hover_event:{action:show_text,value:"View cooperative realm milestones"}}]
tellraw @s [{text:"═══════════════════════════",color:"gold"}]

playsound minecraft:item.book.page_turn player @s ~ ~ ~ 0.5 1.0
