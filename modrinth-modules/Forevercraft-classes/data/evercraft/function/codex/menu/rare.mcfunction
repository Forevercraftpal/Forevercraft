# Codex — Rare Artifacts Menu
tellraw @s [{text:"\u2726 RARE ARTIFACTS \u2726",color:"aqua",bold:true}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[\u2694 Weapons]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 31"},hover_event:{action:"show_text",value:"View Rare weapons (13)"}}]
tellraw @s [{text:"   "},{text:"[\ud83d\udee1 Armor]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 32"},hover_event:{action:"show_text",value:"View Rare armor (5)"}}]
tellraw @s [{text:"   "},{text:"[\u2727 Accessories]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 33"},hover_event:{action:"show_text",value:"View Rare accessories (3)"}}]
tellraw @s [{text:"   "},{text:"[\u2692 Tools]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 34"},hover_event:{action:"show_text",value:"View Rare tools (5)"}}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[\u2190 Back to Main Menu]",color:"gray",click_event:{action:"run_command",command:"/trigger ec.codex set 1"},hover_event:{action:"show_text",value:"Return to main menu"}}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
