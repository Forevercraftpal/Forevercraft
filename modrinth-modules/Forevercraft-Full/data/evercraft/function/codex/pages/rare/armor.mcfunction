# Rare Armor Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Rare Armor \u2726",color:"aqua",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s ""
# Piglin Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/piglin_helmet=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Piglin Helmet",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 413"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/piglin_helmet=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Plate Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/plate_chestplate=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Plate Chestplate",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 414"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/plate_chestplate=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Highland Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/highland_leggings=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Highland Leggings",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 415"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/highland_leggings=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragon Boots
execute if entity @s[advancements={evercraft:artifacts/collected/dragon_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Dragon Boots",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 416"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragon_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Opulent Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/opulent_chestplate=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Opulent Chestplate",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 417"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/opulent_chestplate=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Rare]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 30"},hover_event:{action:"show_text",value:"Return to Rare menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
