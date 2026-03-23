# Uncommon Tools Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"blue",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Uncommon Tools \u2726",color:"blue",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"blue",bold:true}
tellraw @s ""
# Drill
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_drill=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Drill",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 408"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_drill=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Kemetian Shovel
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_kemetian_shovel=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Kemetian Shovel",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 409"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_kemetian_shovel=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Kemetian Hoe
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_kemetian_hoe=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Kemetian Hoe",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 410"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_kemetian_hoe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Double Axe
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_double_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Double Axe",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 411"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_double_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Bone Fishing Rod
execute if entity @s[advancements={evercraft:artifacts/collected/uncommon_bone_fishing_rod=true}] run tellraw @s [{text:"  \u2022 ",color:"blue"},{text:"Bone Fishing Rod",color:"blue",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 412"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/uncommon_bone_fishing_rod=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"blue",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Uncommon]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 20"},hover_event:{action:"show_text",value:"Return to Uncommon menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
