# Codex — Ornate Artifacts Menu
tellraw @s [{text:"✦ ORNATE ARTIFACTS ✦",color:"dark_purple",bold:true}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[⚔ Weapons]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 41"},hover_event:{action:"show_text",value:"View Ornate weapons (11)"}}]
tellraw @s [{text:"   "},{text:"[🛡 Armor]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 42"},hover_event:{action:"show_text",value:"View Ornate armor (71)"}}]
tellraw @s [{text:"   "},{text:"[✧ Accessories]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 43"},hover_event:{action:"show_text",value:"View Ornate accessories (14)"}}]
tellraw @s [{text:"   "},{text:"[⛏ Tools]",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 44"},hover_event:{action:"show_text",value:"View Ornate tools (18)"}}]
tellraw @s ""
tellraw @s [{text:"   "},{text:"[← Back to Main Menu]",color:"gray",click_event:{action:"run_command",command:"/trigger ec.codex set 1"},hover_event:{action:"show_text",value:"Return to main menu"}}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
