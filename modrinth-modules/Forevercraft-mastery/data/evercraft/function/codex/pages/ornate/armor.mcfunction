# Ornate Armor Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"dark_purple",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Ornate Armor \u2726",color:"dark_purple",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"dark_purple",bold:true}
tellraw @s ""
tellraw @s [{text:"  "},{text:"\u25b6 Blood Set",color:"dark_purple",bold:true}]
# Scarlet Boots
execute if entity @s[advancements={evercraft:artifacts/collected/blood_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Scarlet Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 163"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blood_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Scarlet Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/blood_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Scarlet Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 164"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blood_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Scarlet Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/blood_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Scarlet Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 165"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blood_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Scarlet Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/blood_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Scarlet Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 166"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blood_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Star Shield Set",color:"dark_purple",bold:true}]
# Star Shield Boots
execute if entity @s[advancements={evercraft:artifacts/collected/celestial_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Star Shield Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 167"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/celestial_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Star Shield Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/celestial_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Star Shield Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 168"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/celestial_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Star Shield Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/celestial_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Star Shield Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 169"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/celestial_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Star Shield Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/celestial_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Star Shield Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 170"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/celestial_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Crystal Set",color:"dark_purple",bold:true}]
# Emerald Boots
execute if entity @s[advancements={evercraft:artifacts/collected/crystal_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Emerald Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 171"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/crystal_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Emerald Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/crystal_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Emerald Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 172"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/crystal_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Emerald Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/crystal_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Emerald Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 173"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/crystal_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Emerald Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/crystal_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Emerald Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 174"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/crystal_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Dragonslayer Set",color:"dark_purple",bold:true}]
# Dragonslayer Boots
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Dragonslayer Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 175"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonslayer Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Dragonslayer Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 176"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonslayer Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Dragonslayer Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 177"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonslayer Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Dragonslayer Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 178"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Ender Set",color:"dark_purple",bold:true}]
# Ender Boots
execute if entity @s[advancements={evercraft:artifacts/collected/ender_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Ender Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 179"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ender Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/ender_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Ender Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 180"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ender Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/ender_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Ender Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 181"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ender Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/ender_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Ender Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 182"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Frost Set",color:"dark_purple",bold:true}]
# Frost Boots
execute if entity @s[advancements={evercraft:artifacts/collected/frost_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Frost Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 183"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frost_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Frost Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/frost_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Frost Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 184"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frost_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Frost Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/frost_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Frost Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 185"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frost_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Frost Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/frost_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Frost Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 186"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frost_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Golem Set",color:"dark_purple",bold:true}]
# Stalwart Boots
execute if entity @s[advancements={evercraft:artifacts/collected/golem_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Stalwart Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 187"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golem_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Stalwart Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/golem_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Stalwart Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 188"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golem_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Stalwart Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/golem_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Stalwart Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 189"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golem_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Stalwart Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/golem_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Stalwart Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 190"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golem_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Sakura Set",color:"dark_purple",bold:true}]
# Sakura Boots
execute if entity @s[advancements={evercraft:artifacts/collected/nature_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Sakura Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 191"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/nature_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sakura Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/nature_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Sakura Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 192"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/nature_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sakura Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/nature_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Sakura Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 193"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/nature_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sakura Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/nature_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Sakura Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 194"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/nature_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Star Shield Set",color:"dark_purple",bold:true}]
# Star Shield Boots
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Star Shield Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 195"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/netherwalker_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Star Shield Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Star Shield Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 196"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/netherwalker_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Star Shield Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Star Shield Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 197"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/netherwalker_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Star Shield Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/netherwalker_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Star Shield Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 198"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/netherwalker_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Ocean Set",color:"dark_purple",bold:true}]
# Prismarine Boots
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Prismarine Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 199"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ocean_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Prismarine Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Prismarine Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 200"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ocean_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Prismarine Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Prismarine Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 201"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ocean_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Prismarine Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/ocean_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Prismarine Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 202"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ocean_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Phantom Set",color:"dark_purple",bold:true}]
# Phantom Boots
execute if entity @s[advancements={evercraft:artifacts/collected/phantom_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Phantom Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 203"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/phantom_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Phantom Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/phantom_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Phantom Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 204"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/phantom_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Phantom Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/phantom_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Phantom Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 205"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/phantom_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Phantom Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/phantom_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Phantom Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 206"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/phantom_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Romeo's Set",color:"dark_purple",bold:true}]
# Romeo's Boots
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Romeo's Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 207"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sculk_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Romeo's Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Romeo's Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 208"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sculk_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Romeo's Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Romeo's Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 209"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sculk_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Romeo's Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Romeo's Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 210"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sculk_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Shadow Set",color:"dark_purple",bold:true}]
# Shadow Walker Boots
execute if entity @s[advancements={evercraft:artifacts/collected/shadow_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Shadow Walker Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 211"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/shadow_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Shadow Walker Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/shadow_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Shadow Walker Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 212"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/shadow_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Shadow Walker Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/shadow_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Shadow Walker Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 213"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/shadow_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Shadow Walker Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/shadow_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Shadow Walker Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 214"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/shadow_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Petra's Set",color:"dark_purple",bold:true}]
# Petra's Boots
execute if entity @s[advancements={evercraft:artifacts/collected/storm_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Petra's Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 215"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/storm_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Petra's Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/storm_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Petra's Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 216"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/storm_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Petra's Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/storm_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Petra's Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 217"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/storm_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Petra's Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/storm_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Petra's Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 218"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/storm_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Wither Set",color:"dark_purple",bold:true}]
# Wither Boots
execute if entity @s[advancements={evercraft:artifacts/collected/wither_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Wither Boots",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 219"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/wither_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Wither Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/wither_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Wither Chestplate",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 220"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/wither_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Wither Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/wither_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Wither Helmet",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 221"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/wither_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Wither Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/wither_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_purple"},{text:"Wither Leggings",color:"dark_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 222"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/wither_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"dark_purple",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Ornate]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 40"},hover_event:{action:"show_text",value:"Return to Ornate menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
