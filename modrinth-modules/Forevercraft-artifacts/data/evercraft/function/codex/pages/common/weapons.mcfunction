# Common Weapons Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Common Weapons \u2726",color:"white",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s ""
# Bone Slingshot
execute if entity @s[advancements={evercraft:artifacts/collected/bone_slingshot=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Bone Slingshot",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 100"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/bone_slingshot=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Boneclub
execute if entity @s[advancements={evercraft:artifacts/collected/boneclub=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Boneclub",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 101"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/boneclub=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Broadsword
execute if entity @s[advancements={evercraft:artifacts/collected/broadsword=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Broadsword",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 102"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/broadsword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Deku Shield
execute if entity @s[advancements={evercraft:artifacts/collected/deku_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Deku Shield",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 103"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/deku_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Highland Mace
execute if entity @s[advancements={evercraft:artifacts/collected/highland_mace=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Highland Mace",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 104"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/highland_mace=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Hunting Bow
execute if entity @s[advancements={evercraft:artifacts/collected/hunting_bow=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Hunting Bow",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 105"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hunting_bow=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Norroen Sword
execute if entity @s[advancements={evercraft:artifacts/collected/norroen_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Norroen Sword",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 106"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/norroen_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Plunger
execute if entity @s[advancements={evercraft:artifacts/collected/plunger=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Plunger",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 107"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/plunger=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Slingshot
execute if entity @s[advancements={evercraft:artifacts/collected/slingshot=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Slingshot",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 108"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/slingshot=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dagger
execute if entity @s[advancements={evercraft:artifacts/collected/vex_iron_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"white"},{text:"Dagger",color:"white",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 109"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/vex_iron_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"white",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Common]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 10"},hover_event:{action:"show_text",value:"Return to Common menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
