# Codex — Common Artifacts Menu
tellraw @s [{text:"\u2726 COMMON ARTIFACTS \u2726",color:"white",bold:true}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[\u2694 Weapons]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 11"},hover_event:{action:"show_text",value:"View Common weapons (10)"}}]
tellraw @s [{text:"   "},{text:"[\ud83d\udee1 Armor]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 12"},hover_event:{action:"show_text",value:"View Common armor (5)"}}]
tellraw @s [{text:"   "},{text:"[\u2727 Accessories]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 13"},hover_event:{action:"show_text",value:"View Common accessories (3)"}}]
tellraw @s [{text:"   "},{text:"[\u2692 Tools]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 14"},hover_event:{action:"show_text",value:"View Common tools (5)"}}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[\u2190 Back to Main Menu]",color:"gray",click_event:{action:"run_command",command:"/trigger ec.codex set 1"},hover_event:{action:"show_text",value:"Return to main menu"}}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
