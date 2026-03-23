# Uncommon Armor Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"blue",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Uncommon Armor \u2726",color:"blue",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"blue",bold:true}
tellraw @s ""
# Guard Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_guard_helmet=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Guard Helmet",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 403"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_guard_helmet=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dark Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_dark_chestplate=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Dark Chestplate",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 404"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_dark_chestplate=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Royal Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_royal_leggings=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Royal Leggings",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 405"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_royal_leggings=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Creed Boots
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_creed_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Creed Boots",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 406"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_creed_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ore Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_ore_helmet=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Ore Helmet",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 407"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_ore_helmet=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"blue",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Uncommon]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 20"},hover_event:{action:"show_text",value:"Return to Uncommon menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
