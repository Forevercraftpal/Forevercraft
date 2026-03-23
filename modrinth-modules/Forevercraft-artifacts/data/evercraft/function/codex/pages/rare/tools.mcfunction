# Rare Tools Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Rare Tools \u2726",color:"aqua",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s ""
# Fantasy Pickaxe
execute if entity @s[advancements={evercraft:artifacts/collected/fantasy_pickaxe=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Fantasy Pickaxe",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 418"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_pickaxe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Fantasy Shovel
execute if entity @s[advancements={evercraft:artifacts/collected/fantasy_shovel=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Fantasy Shovel",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 419"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_shovel=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sinitic Hoe
execute if entity @s[advancements={evercraft:artifacts/collected/sinitic_hoe=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Sinitic Hoe",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 420"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sinitic_hoe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Axeblade
execute if entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Axeblade",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 421"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Blossom Fishing Rod
execute if entity @s[advancements={evercraft:artifacts/collected/blossom_fishing_rod=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Blossom Fishing Rod",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 422"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blossom_fishing_rod=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Rare]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 30"},hover_event:{action:"show_text",value:"Return to Rare menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
