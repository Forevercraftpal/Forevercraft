# Ornate Weapons Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"dark_purple",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Ornate Weapons \u2726",color:"dark_purple",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"dark_purple",bold:true}
tellraw @s ""
# Acacia Ballista
execute if entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Acacia Ballista",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 146"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ancient Bow
execute if entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Ancient Bow",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 147"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Pwnhammer
execute if entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Pwnhammer",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 148"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Claymore
execute if entity @s[advancements={evercraft:artifacts/collected/claymore=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Claymore",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 149"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/claymore=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Coral Blade
execute if entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Coral Blade",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 150"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dancer's Sword
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Dancer's Sword",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 151"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonslayer Shield
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Dragonslayer Shield",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 152"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Caliburn
execute if entity @s[advancements={evercraft:artifacts/collected/excalibur=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Caliburn",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 153"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/excalibur=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Fang of Frost
execute if entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Fang of Frost",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 154"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Gungnir
execute if entity @s[advancements={evercraft:artifacts/collected/gungnir=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Gungnir",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 155"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/gungnir=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dark Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/helm_of_shadows=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Dark Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 156"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/helm_of_shadows=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Golden Sword of Fire
execute if entity @s[advancements={evercraft:artifacts/collected/inferno_blade=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Golden Sword of Fire",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 157"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/inferno_blade=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Katana
execute if entity @s[advancements={evercraft:artifacts/collected/katana=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Katana",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 158"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/katana=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Heavy Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/leggings_of_fortitude=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Heavy Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 159"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/leggings_of_fortitude=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Heavy Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/titans_plate=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Heavy Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 160"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/titans_plate=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Champion's Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/warriors_crown=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Champion's Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 161"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/warriors_crown=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Climber's Boots
execute if entity @s[advancements={evercraft:artifacts/collected/windwalker_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_purple"},{text:"Climber's Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 162"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/windwalker_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"dark_purple",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Ornate]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 40"},hover_event:{action:"show_text",value:"Return to Ornate menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
