# Codex — Uncommon Artifacts Menu
tellraw @s [{text:"\u2726 UNCOMMON ARTIFACTS \u2726",color:"blue",bold:true}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[\u2694 Weapons]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 21"},hover_event:{action:"show_text",value:"View Uncommon weapons (10)"}}]
tellraw @s [{text:"   "},{text:"[\ud83d\udee1 Armor]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 22"},hover_event:{action:"show_text",value:"View Uncommon armor (5)"}}]
tellraw @s [{text:"   "},{text:"[\u2727 Accessories]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 23"},hover_event:{action:"show_text",value:"View Uncommon accessories (3)"}}]
tellraw @s [{text:"   "},{text:"[\u2692 Tools]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 24"},hover_event:{action:"show_text",value:"View Uncommon tools (5)"}}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[\u2190 Back to Main Menu]",color:"gray",click_event:{action:"run_command",command:"/trigger ec.codex set 1"},hover_event:{action:"show_text",value:"Return to main menu"}}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
