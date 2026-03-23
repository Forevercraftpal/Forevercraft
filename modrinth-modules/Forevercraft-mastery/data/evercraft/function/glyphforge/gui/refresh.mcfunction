# Glyphforge GUI — Refresh display entities (state-aware)

# Update rune status line based on deposited glyph
execute if score @s rf.rune_id matches 0 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value {text:"Glyph: Empty",color:"gray"}
execute if score @s rf.rune_id matches 1 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Emberheart",color:"red",bold:true},{text:" -> Emberheart",color:"white"}]
execute if score @s rf.rune_id matches 2 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Verdant",color:"green",bold:true},{text:" -> Verdant",color:"white"}]
execute if score @s rf.rune_id matches 3 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Quicksilver",color:"aqua",bold:true},{text:" -> Quicksilver",color:"white"}]
execute if score @s rf.rune_id matches 4 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Obsidian",color:"dark_gray",bold:true},{text:" -> Obsidian",color:"white"}]
execute if score @s rf.rune_id matches 5 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Zephyr",color:"white",bold:true},{text:" -> Zephyr",color:"white"}]
execute if score @s rf.rune_id matches 6 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Briar",color:"dark_green",bold:true},{text:" -> Briar",color:"white"}]
execute if score @s rf.rune_id matches 7 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Stalwart",color:"gold",bold:true},{text:" -> Stalwart",color:"white"}]
execute if score @s rf.rune_id matches 8 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Gilded",color:"gold",bold:true},{text:" -> Gilded",color:"white"}]
execute if score @s rf.rune_id matches 9 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Tidecall",color:"blue",bold:true},{text:" -> Tidecall",color:"white"}]
execute if score @s rf.rune_id matches 10 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Hearthstone",color:"aqua",bold:true},{text:" -> Hearthstone",color:"white"}]
execute if score @s rf.rune_id matches 11 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Prism",color:"light_purple",bold:true},{text:" -> Prism",color:"white"}]
execute if score @s rf.rune_id matches 12 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Tempest",color:"yellow",bold:true},{text:" -> Tempest",color:"white"}]
execute if score @s rf.rune_id matches 13 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Glyph: ",color:"gray"},{text:"Arcanum",color:"light_purple",bold:true},{text:" -> ???",color:"white"}]

# State 0: Update forge button (gray)
execute if score @s rf.state matches 0 at @s run data modify entity @e[type=text_display,tag=RF.ForgeText,distance=..7,limit=1] text set value {text:"[ Forge ]",color:"gray",bold:true}

# State 1: Update forge button (red = Start Forging)
execute if score @s rf.state matches 1 at @s run data modify entity @e[type=text_display,tag=RF.ForgeText,distance=..7,limit=1] text set value {text:"[ Start Forging ]",color:"red",bold:true}

# State 2: Forging — calculate and display remaining time
execute if score @s rf.state matches 2 run function evercraft:glyphforge/gui/calc_time_remaining
execute if score @s rf.state matches 2 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value [{text:"Forging in progress...",color:"gold",bold:true}]

# State 3: Forge complete
execute if score @s rf.state matches 3 at @s run data modify entity @e[type=text_display,tag=RF.ForgeText,distance=..7,limit=1] text set value {text:"[ Collect ]",color:"gold",bold:true}
execute if score @s rf.state matches 3 at @s run data modify entity @e[type=text_display,tag=RF.RuneStatus,distance=..7,limit=1] text set value {text:"Forge Complete!",color:"green",bold:true}
execute if score @s rf.state matches 3 at @s run data modify entity @e[type=text_display,tag=RF.Info,distance=..7,limit=1] text set value {text:"Hold equipment in mainhand and collect",color:"yellow"}

# Sound
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.3 1.5
