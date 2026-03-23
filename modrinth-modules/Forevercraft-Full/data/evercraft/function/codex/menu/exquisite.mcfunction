# Codex — Exquisite Artifacts Menu
tellraw @s [{text:"✦ EXQUISITE ARTIFACTS ✦",color:"light_purple",bold:true}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[⚔ Weapons]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 51"},hover_event:{action:"show_text",value:"View Exquisite weapons (21)"}}]
tellraw @s [{text:"   "},{text:"[🛡 Armor]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 52"},hover_event:{action:"show_text",value:"View Exquisite armor (22)"}}]
tellraw @s [{text:"   "},{text:"[✧ Accessories]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 53"},hover_event:{action:"show_text",value:"View Exquisite accessories (15)"}}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[← Back to Main Menu]",color:"gray",click_event:{action:"run_command",command:"/trigger ec.codex set 1"},hover_event:{action:"show_text",value:"Return to main menu"}}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
