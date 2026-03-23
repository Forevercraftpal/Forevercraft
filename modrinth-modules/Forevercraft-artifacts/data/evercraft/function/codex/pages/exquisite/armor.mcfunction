# Exquisite Armor Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"light_purple",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Exquisite Armor \u2726",color:"light_purple",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"light_purple",bold:true}
tellraw @s ""
tellraw @s [{text:"  "},{text:"\u25b6 Cloaked Skull Set",color:"light_purple",bold:true}]
# Cloaked Skull Boots
execute if entity @s[advancements={evercraft:artifacts/collected/cloaked_skull_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Cloaked Skull Boots",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 270"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/cloaked_skull_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Cloaked Skull Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/cloaked_skull_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Cloaked Skull Chestplate",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 271"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/cloaked_skull_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Cloaked Skull Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/cloaked_skull_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Cloaked Skull Helmet",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 272"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/cloaked_skull_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Cloaked Skull Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/cloaked_skull_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Cloaked Skull Leggings",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 273"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/cloaked_skull_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Ember Set",color:"light_purple",bold:true}]
# Ember Boots
execute if entity @s[advancements={evercraft:artifacts/collected/ember_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Ember Boots",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 274"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ember_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ember Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/ember_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Ember Chestplate",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 275"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ember_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ember Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/ember_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Ember Helmet",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 276"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ember_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ember Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/ember_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Ember Leggings",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 277"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ember_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Ninja Set",color:"light_purple",bold:true}]
# Ninja Boots
execute if entity @s[advancements={evercraft:artifacts/collected/ninja_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Ninja Boots",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 278"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ninja_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ninja Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/ninja_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Ninja Chestplate",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 279"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ninja_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ninja Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/ninja_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Ninja Helmet",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 280"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ninja_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ninja Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/ninja_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Ninja Leggings",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 281"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ninja_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Space Set",color:"light_purple",bold:true}]
# Space Boots
execute if entity @s[advancements={evercraft:artifacts/collected/space_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Space Boots",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 282"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/space_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Space Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/space_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Space Chestplate",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 283"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/space_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Space Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/space_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Space Helmet",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 284"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/space_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Space Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/space_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"light_purple"},{text:"Space Leggings",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 285"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/space_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"light_purple",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Exquisite]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 50"},hover_event:{action:"show_text",value:"Return to Exquisite menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
