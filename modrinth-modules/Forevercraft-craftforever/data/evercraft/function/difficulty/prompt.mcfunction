# Difficulty Selection Prompt — Shown on first join and from help menu
# @s = player

tellraw @s ""
tellraw @s [{text:"  "},{text:"\u2726 Choose Your Path",color:"gold",bold:true}]
tellraw @s [{text:"  "},{text:"This affects mob scaling, rewards, and difficulty.",color:"gray"}]
tellraw @s ""
tellraw @s [{text:"  "},{text:"[ Newcomer ]",color:"green",bold:true,click_event:{action:"run_command",command:"/trigger ec.diff_trigger set 1"},hover_event:{action:"show_text",value:[{text:"Newcomer Mode",color:"green",bold:true},{text:"\n"},{text:"No DR-scaled mobs",color:"gray"},{text:"\n"},{text:"+10% bonus on coins & drops",color:"gray"},{text:"\n"},{text:"Easier dungeon encounters",color:"gray"},{text:"\n\n"},{text:"Recommended for new players.",color:"dark_gray",italic:true}]}}]
tellraw @s [{text:"    "},{text:"Relaxed mobs, +10% rewards. A gentler start.",color:"gray",italic:true}]
tellraw @s ""
tellraw @s [{text:"  "},{text:"[ Adventurer ]",color:"red",bold:true,click_event:{action:"run_command",command:"/trigger ec.diff_trigger set 2"},hover_event:{action:"show_text",value:[{text:"Adventurer Mode",color:"red",bold:true},{text:"\n"},{text:"Full DR-scaled mobs",color:"gray"},{text:"\n"},{text:"Standard reward rates",color:"gray"},{text:"\n"},{text:"Full dungeon difficulty",color:"gray"},{text:"\n\n"},{text:"The intended Forevercraft experience.",color:"dark_gray",italic:true}]}}]
tellraw @s [{text:"    "},{text:"Full challenge, standard rates. The real deal.",color:"gray",italic:true}]
tellraw @s ""
tellraw @s [{text:"  "},{text:"You can change this every 14 days from the Help menu.",color:"dark_gray",italic:true}]
tellraw @s ""
