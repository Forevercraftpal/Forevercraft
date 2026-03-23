# Ornate Accessories Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"dark_purple",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Ornate Accessories \u2726",color:"dark_purple",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"dark_purple",bold:true}
tellraw @s ""
# Anglers Pearl
execute if entity @s[advancements={evercraft:artifacts/collected/anglers_pearl=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Anglers Pearl",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 223"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/anglers_pearl=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Berserkers Fang
execute if entity @s[advancements={evercraft:artifacts/collected/berserkers_fang=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Berserkers Fang",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 224"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/berserkers_fang=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Cartographers Lens
execute if entity @s[advancements={evercraft:artifacts/collected/cartographers_lens=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Cartographers Lens",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 225"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/cartographers_lens=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Enchanted Monocle
execute if entity @s[advancements={evercraft:artifacts/collected/enchanted_monocle=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Enchanted Monocle",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 226"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/enchanted_monocle=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Farmers Almanac
execute if entity @s[advancements={evercraft:artifacts/collected/farmers_almanac=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Farmers Almanac",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 227"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/farmers_almanac=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Healers Salve
execute if entity @s[advancements={evercraft:artifacts/collected/healers_salve=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Healers Salve",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 228"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healers_salve=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Merchants Coin
execute if entity @s[advancements={evercraft:artifacts/collected/merchants_coin=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Merchants Coin",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 229"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/merchants_coin=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Miners Lantern
execute if entity @s[advancements={evercraft:artifacts/collected/miners_lantern=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Miners Lantern",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 230"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/miners_lantern=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Phoenix Feather
execute if entity @s[advancements={evercraft:artifacts/collected/phoenix_feather=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Phoenix Feather",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 231"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/phoenix_feather=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Seers Compass
execute if entity @s[advancements={evercraft:artifacts/collected/seers_compass=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Seers Compass",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 232"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/seers_compass=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Soul Lantern Fragment
execute if entity @s[advancements={evercraft:artifacts/collected/soul_lantern_fragment=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Soul Lantern Fragment",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 233"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/soul_lantern_fragment=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Spelunkers Echo
execute if entity @s[advancements={evercraft:artifacts/collected/spelunkers_echo=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Spelunkers Echo",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 234"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/spelunkers_echo=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Wardens Echo
execute if entity @s[advancements={evercraft:artifacts/collected/wardens_echo=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Wardens Echo",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 235"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/wardens_echo=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Wind Chime
execute if entity @s[advancements={evercraft:artifacts/collected/wind_chime=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Wind Chime",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 236"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/wind_chime=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"dark_purple",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Ornate]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 40"},hover_event:{action:"show_text",value:"Return to Ornate menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
