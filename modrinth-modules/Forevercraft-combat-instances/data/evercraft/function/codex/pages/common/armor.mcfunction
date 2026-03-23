# Common Armor Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Common Armor \u2726",color:"white",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s ""
# Thief Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/common_thief_helmet=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Thief Helmet",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 393"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_thief_helmet=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Fox Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/common_fox_chestplate=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Fox Chestplate",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 394"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_fox_chestplate=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ocelot Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/common_ocelot_leggings=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Ocelot Leggings",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 395"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_ocelot_leggings=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Wolf Boots
execute if entity @s[advancements={evercraft:artifacts/collected/common_wolf_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Wolf Boots",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 396"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_wolf_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Renegade Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/common_renegade_chestplate=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Renegade Chestplate",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 397"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/common_renegade_chestplate=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Common]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 10"},hover_event:{action:"show_text",value:"Return to Common menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
