# Uncommon Accessories Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"blue",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Uncommon Accessories \u2726",color:"blue",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"blue",bold:true}
tellraw @s ""
# Featherweight Stone
execute if entity @s[advancements={evercraft:artifacts/collected/featherweight_stone=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Featherweight Stone",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 123"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/featherweight_stone=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Glowstone Pendant
execute if entity @s[advancements={evercraft:artifacts/collected/glowstone_pendant=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Glowstone Pendant",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 124"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/glowstone_pendant=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Iron Talisman
execute if entity @s[advancements={evercraft:artifacts/collected/iron_talisman=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Iron Talisman",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 125"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/iron_talisman=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"blue",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Uncommon]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 20"},hover_event:{action:"show_text",value:"Return to Uncommon menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
