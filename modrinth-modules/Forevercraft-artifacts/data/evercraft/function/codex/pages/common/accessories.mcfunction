# Common Accessories Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Common Accessories \u2726",color:"white",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s ""
# Pebble of Dreams
execute if entity @s[advancements={evercraft:artifacts/collected/pebble_of_dreams=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Pebble of Dreams",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 110"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/pebble_of_dreams=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Travelers Charm
execute if entity @s[advancements={evercraft:artifacts/collected/travelers_charm=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Travelers Charm",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 111"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/travelers_charm=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Worn Compass
execute if entity @s[advancements={evercraft:artifacts/collected/worn_compass=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Worn Compass",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 112"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/worn_compass=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Common]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 10"},hover_event:{action:"show_text",value:"Return to Common menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
