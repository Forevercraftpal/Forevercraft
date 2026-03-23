# Rare Weapons Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Rare Weapons \u2726",color:"aqua",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s ""
# Vanguard Shield
execute if entity @s[advancements={evercraft:artifacts/collected/aegis_of_the_guardian=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Vanguard Shield",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 126"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/aegis_of_the_guardian=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Firebolt Thrower
execute if entity @s[advancements={evercraft:artifacts/collected/air_strike=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Firebolt Thrower",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 127"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/air_strike=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ancient Trident
execute if entity @s[advancements={evercraft:artifacts/collected/ancient_trident=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Ancient Trident",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 128"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ancient_trident=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Battle Bow
execute if entity @s[advancements={evercraft:artifacts/collected/battle_bow=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Battle Bow",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 129"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/battle_bow=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Battlestaff
execute if entity @s[advancements={evercraft:artifacts/collected/battlestaff=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Battlestaff",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 130"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/battlestaff=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Bone Cudgel
execute if entity @s[advancements={evercraft:artifacts/collected/bone_cudgel=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Bone Cudgel",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 131"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/bone_cudgel=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Burning Skull
execute if entity @s[advancements={evercraft:artifacts/collected/bulwark_of_flames=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Burning Skull",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 132"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/bulwark_of_flames=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Combat Mace
execute if entity @s[advancements={evercraft:artifacts/collected/combat_mace=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Combat Mace",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 133"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/combat_mace=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Cutlass
execute if entity @s[advancements={evercraft:artifacts/collected/cutlass=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Cutlass",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 134"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/cutlass=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Hammer of Gravity
execute if entity @s[advancements={evercraft:artifacts/collected/earthshaker=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Hammer of Gravity",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 135"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/earthshaker=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Shivering Bow
execute if entity @s[advancements={evercraft:artifacts/collected/frostbite_bow=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Shivering Bow",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 136"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frostbite_bow=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Mjolnir
execute if entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Mjolnir",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 137"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Hidden Blade
execute if entity @s[advancements={evercraft:artifacts/collected/soulreaper_scythe=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Hidden Blade",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 138"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/soulreaper_scythe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Light Bow
execute if entity @s[advancements={evercraft:artifacts/collected/stormcaller_bow=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Light Bow",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 139"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/stormcaller_bow=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Tower Shield
execute if entity @s[advancements={evercraft:artifacts/collected/tower_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Tower Shield",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 140"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/tower_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Corrupted Crossbow
execute if entity @s[advancements={evercraft:artifacts/collected/venomfang_crossbow=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Corrupted Crossbow",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 141"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/venomfang_crossbow=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Rapid Crossbow
execute if entity @s[advancements={evercraft:artifacts/collected/windrunner=true}] run tellraw @s [{text:"  \u2022 ",color:"aqua"},{text:"Rapid Crossbow",color:"aqua",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 142"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/windrunner=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"aqua",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Rare]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 30"},hover_event:{action:"show_text",value:"Return to Rare menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
