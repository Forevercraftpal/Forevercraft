# Mythical Weapons Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gold",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Mythical Weapons \u2726",color:"gold",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gold",bold:true}
tellraw @s ""
# Butterfly Crossbow
execute if entity @s[advancements={evercraft:artifacts/collected/awper_hand=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Butterfly Crossbow",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 297"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/awper_hand=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Axe of Honor
execute if entity @s[advancements={evercraft:artifacts/collected/axe_of_honor=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Axe of Honor",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 298"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/axe_of_honor=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ellegaard's Shield
execute if entity @s[advancements={evercraft:artifacts/collected/command_block_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Ellegaard's Shield",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 299"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/command_block_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Command Block Sword
execute if entity @s[advancements={evercraft:artifacts/collected/command_block_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Command Block Sword",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 300"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/command_block_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonmaster Axe
execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Dragonmaster Axe",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 374"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonslayer Lance
execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_lance=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Dragonslayer Lance",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 301"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_lance=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Astract
execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Astract",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 302"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonmaster Sword
execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Dragonmaster Sword",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 303"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ender Dragon Blade
execute if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Ender Dragon Blade",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 304"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ender Dragon Shield
execute if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Ender Dragon Shield",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 375"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Gaster Blaster
execute if entity @s[advancements={evercraft:artifacts/collected/gaster_blaster=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Gaster Blaster",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 305"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/gaster_blaster=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Order of the Stone Shield
execute if entity @s[advancements={evercraft:artifacts/collected/golden_goliath_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Order of the Stone Shield",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 306"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golden_goliath_shield=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Golden Goliath Sword
execute if entity @s[advancements={evercraft:artifacts/collected/golden_goliath_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Golden Goliath Sword",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 307"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golden_goliath_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Hoe of Honor
execute if entity @s[advancements={evercraft:artifacts/collected/hoe_of_honor=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Hoe of Honor",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 308"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hoe_of_honor=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Nocturnal Bow
execute if entity @s[advancements={evercraft:artifacts/collected/hunters_promise=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Nocturnal Bow",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 309"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hunters_promise=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Comet on a Stick
execute if entity @s[advancements={evercraft:artifacts/collected/infernal_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Comet on a Stick",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 310"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/infernal_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Infinity Lance
execute if entity @s[advancements={evercraft:artifacts/collected/infinity_lance=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Infinity Lance",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 311"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/infinity_lance=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Journey Pickaxe
execute if entity @s[advancements={evercraft:artifacts/collected/journey_pickaxe=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Journey Pickaxe",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 312"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/journey_pickaxe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Journey Shovel
execute if entity @s[advancements={evercraft:artifacts/collected/journey_shovel=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Journey Shovel",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 313"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/journey_shovel=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonslayer Axe
execute if entity @s[advancements={evercraft:artifacts/collected/kratos_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Dragonslayer Axe",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 314"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/kratos_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Longinus
execute if entity @s[advancements={evercraft:artifacts/collected/longinus=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Longinus",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 315"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/longinus=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Master Bolt
execute if entity @s[advancements={evercraft:artifacts/collected/master_bolt=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Master Bolt",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 316"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/master_bolt=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Mjolnir
execute if entity @s[advancements={evercraft:artifacts/collected/mjolnir_mythical=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Mjolnir",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 317"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mjolnir_mythical=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Titan's Shroud Trident
execute if entity @s[advancements={evercraft:artifacts/collected/ninja_trident=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Titan's Shroud Trident",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 318"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ninja_trident=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Red Dragon Wings
execute if entity @s[advancements={evercraft:artifacts/collected/red_dragon_wings=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Red Dragon Wings",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 319"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/red_dragon_wings=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Portal Staff
execute if entity @s[advancements={evercraft:artifacts/collected/romeo_hammer=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Portal Staff",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 320"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/romeo_hammer=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sinister Sword
execute if entity @s[advancements={evercraft:artifacts/collected/romeo_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Sinister Sword",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 321"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/romeo_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragon Slayer
execute if entity @s[advancements={evercraft:artifacts/collected/slayer_of_dragons=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Dragon Slayer",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 322"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/slayer_of_dragons=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Adventure Sword
execute if entity @s[advancements={evercraft:artifacts/collected/spelunker_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Adventure Sword",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 323"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/spelunker_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# The Beginning and The End
execute if entity @s[advancements={evercraft:artifacts/collected/the_beginning_and_the_end=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"The Beginning and The End",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 324"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/the_beginning_and_the_end=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Void Voyage
execute if entity @s[advancements={evercraft:artifacts/collected/xara_hammer=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Void Voyage",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 325"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/xara_hammer=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Nameless Blade
execute if entity @s[advancements={evercraft:artifacts/collected/xara_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Nameless Blade",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 326"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/xara_sword=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Zantetsuken
execute if entity @s[advancements={evercraft:artifacts/collected/zantetsuken=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Zantetsuken",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 327"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/zantetsuken=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragon Fan
execute if entity @s[advancements={evercraft:artifacts/collected/dragon_fan=true}] run tellraw @s [{text:"  \u2022 ",color:"gold"},{text:"Dragon Fan",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 328"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragon_fan=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"gold",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Mythical]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 60"},hover_event:{action:"show_text",value:"Return to Mythical menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
