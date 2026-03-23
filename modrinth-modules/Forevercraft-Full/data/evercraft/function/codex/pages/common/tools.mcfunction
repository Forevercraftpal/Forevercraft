# Common Tools Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Common Tools \u2726",color:"white",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s ""
# Hammer
execute if entity @s[advancements={evercraft:artifacts/collected/common_hammer=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Hammer",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 398"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_hammer=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ladle
execute if entity @s[advancements={evercraft:artifacts/collected/common_ladle=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Ladle",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 399"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_ladle=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Scythe
execute if entity @s[advancements={evercraft:artifacts/collected/common_scythe=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Scythe",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 400"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_scythe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Highland Axe
execute if entity @s[advancements={evercraft:artifacts/collected/common_highland_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Highland Axe",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 401"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_highland_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Common]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 10"},hover_event:{action:"show_text",value:"Return to Common menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
