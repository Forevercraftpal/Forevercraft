# Mythical Accessories Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gold",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Mythical Accessories \u2726",color:"gold",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gold",bold:true}
tellraw @s ""
# Beacon of the Ancients
execute if entity @s[advancements={evercraft:artifacts/collected/beacon_of_ancients=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Beacon of the Ancients",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 363"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/beacon_of_ancients=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Claudes Gift
execute if entity @s[advancements={evercraft:artifacts/collected/claudes_gift=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Claudes Gift",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 364"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/claudes_gift=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Codex of Everything
execute if entity @s[advancements={evercraft:artifacts/collected/codex_of_everything=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Codex of Everything",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 365"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/codex_of_everything=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ender Dragon Scale
execute if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_scale=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Ender Dragon Scale",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 366"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_scale=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Heart of the Void
execute if entity @s[advancements={evercraft:artifacts/collected/heart_of_the_void=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Heart of the Void",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 367"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/heart_of_the_void=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Netherite Nexus
execute if entity @s[advancements={evercraft:artifacts/collected/netherite_nexus=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Netherite Nexus",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 368"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/netherite_nexus=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Prism of Light
execute if entity @s[advancements={evercraft:artifacts/collected/prism_of_light=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Prism of Light",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 369"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/prism_of_light=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Redstone Heart
execute if entity @s[advancements={evercraft:artifacts/collected/redstone_heart=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Redstone Heart",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 370"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/redstone_heart=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sculk Singularity
execute if entity @s[advancements={evercraft:artifacts/collected/sculk_singularity=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Sculk Singularity",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 371"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sculk_singularity=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Temporal Hourglass
execute if entity @s[advancements={evercraft:artifacts/collected/temporal_hourglass=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Temporal Hourglass",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 372"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/temporal_hourglass=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Wither Rose Crown
execute if entity @s[advancements={evercraft:artifacts/collected/wither_rose_crown=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Wither Rose Crown",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 373"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/wither_rose_crown=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gold",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Mythical]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 60"},hover_event:{action:"show_text",value:"Return to Mythical menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
