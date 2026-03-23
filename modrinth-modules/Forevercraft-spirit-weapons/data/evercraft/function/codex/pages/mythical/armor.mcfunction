# Mythical Armor Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gold",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Mythical Armor \u2726",color:"gold",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gold",bold:true}
tellraw @s ""
tellraw @s [{text:"  "},{text:"\u25b6 Dragonmaster Set",color:"gold",bold:true}]
# Dragonmaster Boots
execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Dragonmaster Boots",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 329"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonmaster Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Dragonmaster Chestplate",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 330"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonmaster Wings
execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Dragonmaster Wings",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 331"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonmaster Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Dragonmaster Helmet",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 332"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonmaster Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Dragonmaster Leggings",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 333"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Ender Dragon Set",color:"gold",bold:true}]
# Ender Dragon Boots
execute if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Ender Dragon Boots",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 334"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ender Dragon Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Ender Dragon Chestplate",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 335"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ender Dragon Wings
execute if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Ender Dragon Wings",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 336"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ender Dragon Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Ender Dragon Helmet",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 337"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ender Dragon Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Ender Dragon Leggings",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 338"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Infernal Set",color:"gold",bold:true}]
# Lava Warrior Boots
execute if entity @s[advancements={evercraft:artifacts/collected/infernal_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Lava Warrior Boots",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 339"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/infernal_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Lava Warrior Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/infernal_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Lava Warrior Chestplate",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 340"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/infernal_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Lava Warrior Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/infernal_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Lava Warrior Helmet",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 341"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/infernal_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Lava Warrior Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/infernal_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Lava Warrior Leggings",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 342"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/infernal_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Journey Set",color:"gold",bold:true}]
# Journey Boots
execute if entity @s[advancements={evercraft:artifacts/collected/journey_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Journey Boots",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 343"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/journey_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Journey Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/journey_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Journey Chestplate",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 344"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/journey_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Crucuble Elytra
execute if entity @s[advancements={evercraft:artifacts/collected/journey_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Crucuble Elytra",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 345"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/journey_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Journey Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/journey_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Journey Helmet",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 346"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/journey_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Journey Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/journey_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Journey Leggings",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 347"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/journey_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Spelunker Set",color:"gold",bold:true}]
# Splendid Boots
execute if entity @s[advancements={evercraft:artifacts/collected/spelunker_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Splendid Boots",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 348"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/spelunker_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Splendid Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/spelunker_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Splendid Chestplate",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 349"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/spelunker_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Amethyst Elytra
execute if entity @s[advancements={evercraft:artifacts/collected/spelunker_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Amethyst Elytra",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 350"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/spelunker_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Splendid Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/spelunker_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Splendid Helmet",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 351"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/spelunker_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Splendid Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/spelunker_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Splendid Leggings",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 352"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/spelunker_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Titan Set",color:"gold",bold:true}]
# Titan's Shroud Boots
execute if entity @s[advancements={evercraft:artifacts/collected/titan_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Titan's Shroud Boots",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 353"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/titan_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Titan's Shroud Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/titan_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Titan's Shroud Chestplate",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 354"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/titan_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Downpour Elytra
execute if entity @s[advancements={evercraft:artifacts/collected/titan_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Downpour Elytra",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 355"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/titan_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Titan's Shroud Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/titan_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Titan's Shroud Helmet",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 356"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/titan_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Titan's Shroud Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/titan_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Titan's Shroud Leggings",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 357"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/titan_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s [{text:"  "},{text:"\u25b6 Verdant Set",color:"gold",bold:true}]
# Verdant Boots
execute if entity @s[advancements={evercraft:artifacts/collected/verdant_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Verdant Boots",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 358"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/verdant_boots=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Verdant Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/verdant_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Verdant Chestplate",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 359"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/verdant_chestplate=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Verdant Elytra
execute if entity @s[advancements={evercraft:artifacts/collected/verdant_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Verdant Elytra",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 360"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/verdant_elytra=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Verdant Hood
execute if entity @s[advancements={evercraft:artifacts/collected/verdant_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Verdant Hood",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 361"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/verdant_helmet=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Verdant Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/verdant_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"gold"},{text:"Verdant Leggings",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 362"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/verdant_leggings=true}] run tellraw @s [{text:"    \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gold",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Mythical]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 60"},hover_event:{action:"show_text",value:"Return to Mythical menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
