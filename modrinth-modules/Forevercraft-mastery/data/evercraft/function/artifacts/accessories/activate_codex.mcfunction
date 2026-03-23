# Codex of Everything — Dimension Teleport Menu (sneak + mainhand)
# Shows clickable menu to teleport to 0, safe height, 0 in any dimension

tellraw @s [{text:"Codex of Everything",color:"light_purple",bold:true}]
tellraw @s [{text:"Select a dimension to teleport to (0, Y, 0):",color:"gray"}]
tellraw @s ""
tellraw @s [{text:"  "},{text:"[Overworld]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex_tp set 1"},hover_event:{action:"show_text",value:{text:"Teleport to Overworld (0, 100, 0)",color:"green"}}}]
tellraw @s [{text:"  "},{text:"[The Nether]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex_tp set 2"},hover_event:{action:"show_text",value:{text:"Teleport to Nether (0, 80, 0)",color:"red"}}}]
tellraw @s [{text:"  "},{text:"[The End]",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex_tp set 3"},hover_event:{action:"show_text",value:{text:"Teleport to End (0, 64, 0)",color:"light_purple"}}}]
tellraw @s ""
tellraw @s [{text:"  Sneak + Right-click to close",color:"dark_gray",italic:true}]

playsound minecraft:item.book.page_turn master @s ~ ~ ~ 1 1.2
