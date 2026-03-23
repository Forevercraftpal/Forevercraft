# Exquisite Accessories Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"light_purple",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Exquisite Accessories \u2726",color:"light_purple",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"light_purple",bold:true}
tellraw @s ""
# Totem of the Berserker
execute if entity @s[advancements={evercraft:artifacts/collected/berserker_totem=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Totem of the Berserker",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 286"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/berserker_totem=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Blaze Core
execute if entity @s[advancements={evercraft:artifacts/collected/blaze_core=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Blaze Core",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 287"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blaze_core=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Claudes Eye
execute if entity @s[advancements={evercraft:artifacts/collected/claudes_eye=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Claudes Eye",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 288"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/claudes_eye=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragons Tear
execute if entity @s[advancements={evercraft:artifacts/collected/dragons_tear=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Dragons Tear",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 289"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragons_tear=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Nether Star Shard
execute if entity @s[advancements={evercraft:artifacts/collected/nether_star_shard=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Nether Star Shard",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 290"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/nether_star_shard=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Phantom Charm
execute if entity @s[advancements={evercraft:artifacts/collected/phantom_charm=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Phantom Charm",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 291"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/phantom_charm=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sculk Heart
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_heart=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Sculk Heart",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 292"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sculk_heart=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sea Heart Relic
execute if entity @s[advancements={evercraft:artifacts/collected/sea_heart_relic=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Sea Heart Relic",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 293"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sea_heart_relic=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Totem of Soul Protection
execute if entity @s[advancements={evercraft:artifacts/collected/soul_protection=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Totem of Soul Protection",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 294"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/soul_protection=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Void Heart
execute if entity @s[advancements={evercraft:artifacts/collected/void_heart=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Void Heart",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 295"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/void_heart=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Warden Totem
execute if entity @s[advancements={evercraft:artifacts/collected/warden_totem=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Warden Totem",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 296"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/warden_totem=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"light_purple",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Exquisite]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 50"},hover_event:{action:"show_text",value:"Return to Exquisite menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
