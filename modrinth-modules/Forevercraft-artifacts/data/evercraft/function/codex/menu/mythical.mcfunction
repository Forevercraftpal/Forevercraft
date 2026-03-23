# Codex — Mythical Artifacts Menu
tellraw @s [{text:"✦ MYTHICAL ARTIFACTS ✦",color:"gold",bold:true}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[⚔ Weapons]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 61"},hover_event:{action:"show_text",value:"View Mythical weapons (27)"}}]
tellraw @s [{text:"   "},{text:"[🛡 Armor]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 62"},hover_event:{action:"show_text",value:"View Mythical armor (38)"}}]
tellraw @s [{text:"   "},{text:"[✧ Accessories]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 63"},hover_event:{action:"show_text",value:"View Mythical accessories (11)"}}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[← Back to Main Menu]",color:"gray",click_event:{action:"run_command",command:"/trigger ec.codex set 1"},hover_event:{action:"show_text",value:"Return to main menu"}}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
