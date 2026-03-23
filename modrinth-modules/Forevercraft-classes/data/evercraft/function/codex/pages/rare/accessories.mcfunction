# Rare Accessories Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Rare Accessories \u2726",color:"aqua",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s ""
# Diamond Ring
execute if entity @s[advancements={evercraft:artifacts/collected/diamond_ring=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Diamond Ring",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 143"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/diamond_ring=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Heartstone
execute if entity @s[advancements={evercraft:artifacts/collected/heartstone=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Heartstone",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 144"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/heartstone=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ruin Watch
execute if entity @s[advancements={evercraft:artifacts/collected/ruin_watch=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Ruin Watch",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 392"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ruin_watch=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Stormcatcher Shard
execute if entity @s[advancements={evercraft:artifacts/collected/stormcatcher_shard=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Stormcatcher Shard",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 145"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/stormcatcher_shard=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Rare]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 30"},hover_event:{action:"show_text",value:"Return to Rare menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
