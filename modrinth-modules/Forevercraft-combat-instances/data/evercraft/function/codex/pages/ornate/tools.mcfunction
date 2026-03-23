# Ornate Tools Page
tellraw @s {text:"══════════════════════════════",color:"dark_purple",bold:true}
tellraw @s [{text:"      "},{text:"✦ Ornate Tools ✦",color:"dark_purple",bold:true}]
tellraw @s {text:"══════════════════════════════",color:"dark_purple",bold:true}
tellraw @s ""
tellraw @s [{text:"  "},{text:"▶ Frost Set",color:"dark_purple",bold:true}]
# Glass Pickaxe
execute if entity @s[advancements={evercraft:artifacts/collected/frost_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Glass Pickaxe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 374"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frost_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Glass Shovel
execute if entity @s[advancements={evercraft:artifacts/collected/frost_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Glass Shovel",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 375"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frost_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Glass Hoe
execute if entity @s[advancements={evercraft:artifacts/collected/frost_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Glass Hoe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 376"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frost_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"▶ Sakura Set",color:"dark_purple",bold:true}]
# Sakura Pickaxe
execute if entity @s[advancements={evercraft:artifacts/collected/nature_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Sakura Pickaxe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 377"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/nature_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sakura Shovel
execute if entity @s[advancements={evercraft:artifacts/collected/nature_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Sakura Shovel",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 378"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/nature_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sakura Hoe
execute if entity @s[advancements={evercraft:artifacts/collected/nature_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Sakura Hoe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 379"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/nature_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"▶ Star Shield Set",color:"dark_purple",bold:true}]
# Star Pickaxe
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Star Pickaxe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 380"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/netherwalker_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Star Shovel
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Star Shovel",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 381"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/netherwalker_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Star Hoe
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Star Hoe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 382"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/netherwalker_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"▶ Ocean Set",color:"dark_purple",bold:true}]
# Prismarine Pickaxe
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Prismarine Pickaxe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 383"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ocean_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Prismarine Shovel
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Prismarine Shovel",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 384"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ocean_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Prismarine Hoe
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Prismarine Hoe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 385"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ocean_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"▶ Romeo's Set",color:"dark_purple",bold:true}]
# Romeo's Pickaxe
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Romeo's Pickaxe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 386"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sculk_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Romeo's Shovel
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Romeo's Shovel",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 387"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sculk_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Romeo's Sword
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Romeo's Sword",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 388"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sculk_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"▶ Petra's Set",color:"dark_purple",bold:true}]
# Petra's Pickaxe
execute if entity @s[advancements={evercraft:artifacts/collected/storm_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Petra's Pickaxe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 389"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/storm_pickaxe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Petra's Shovel
execute if entity @s[advancements={evercraft:artifacts/collected/storm_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Petra's Shovel",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 390"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/storm_shovel=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Petra's Hoe
execute if entity @s[advancements={evercraft:artifacts/collected/storm_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_purple"},{text:"Petra's Hoe",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 391"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/storm_hoe=true}] run tellraw @s [{text:"    • ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"══════════════════════════════",color:"dark_purple",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Ornate]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 40"},hover_event:{action:"show_text",value:"Return to Ornate menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
