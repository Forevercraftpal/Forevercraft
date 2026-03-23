# Exquisite Weapons Page
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"light_purple",bold:true}
tellraw @s [{text:"      "},{text:"\u2726 Exquisite Weapons \u2726",color:"light_purple",bold:true}]
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"light_purple",bold:true}
tellraw @s ""
# Power Bow
execute if entity @s[advancements={evercraft:artifacts/collected/arm_cannon=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Power Bow",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 237"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/arm_cannon=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dev Hammer
execute if entity @s[advancements={evercraft:artifacts/collected/ban_hammer=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Dev Hammer",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 238"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ban_hammer=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Call of the Void
execute if entity @s[advancements={evercraft:artifacts/collected/call_of_the_void=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Call of the Void",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 239"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/call_of_the_void=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Crucuble Trident
execute if entity @s[advancements={evercraft:artifacts/collected/crucible_trident=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Crucuble Trident",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 240"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/crucible_trident=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Dragonheart Mace
execute if entity @s[advancements={evercraft:artifacts/collected/dragonheart_mace=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Dragonheart Mace",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 241"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonheart_mace=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Echo Shot
execute if entity @s[advancements={evercraft:artifacts/collected/echo_shot=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Echo Shot",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 242"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/echo_shot=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Eyelander
execute if entity @s[advancements={evercraft:artifacts/collected/eyelander=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Eyelander",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 243"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/eyelander=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Fantasy Trident
execute if entity @s[advancements={evercraft:artifacts/collected/fantasy_trident=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Fantasy Trident",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 244"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_trident=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Frostmourne
execute if entity @s[advancements={evercraft:artifacts/collected/frostmourne=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Frostmourne",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 245"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frostmourne=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Glaive
execute if entity @s[advancements={evercraft:artifacts/collected/glaive=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Glaive",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 246"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/glaive=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Golden Gauntlet
execute if entity @s[advancements={evercraft:artifacts/collected/golden_gauntlet=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Golden Gauntlet",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 247"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golden_gauntlet=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Gungnir
execute if entity @s[advancements={evercraft:artifacts/collected/gungnir_spear=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Gungnir",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 248"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/gungnir_spear=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Heartstealer
execute if entity @s[advancements={evercraft:artifacts/collected/heartstealer=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Heartstealer",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 249"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/heartstealer=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Leviathan Axe
execute if entity @s[advancements={evercraft:artifacts/collected/leviathan_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Leviathan Axe",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 250"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/leviathan_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Mace of Legends
execute if entity @s[advancements={evercraft:artifacts/collected/mace_of_legends=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Mace of Legends",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 251"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mace_of_legends=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Prismarine Gauntlet
execute if entity @s[advancements={evercraft:artifacts/collected/prismarine_gauntlet=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Prismarine Gauntlet",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 252"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/prismarine_gauntlet=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Ring Totem
execute if entity @s[advancements={evercraft:artifacts/collected/ring_of_undying=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Ring Totem",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 253"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ring_of_undying=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Sabrewing
execute if entity @s[advancements={evercraft:artifacts/collected/sabrewing=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Sabrewing",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 254"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sabrewing=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# The Soul Mirror
execute if entity @s[advancements={evercraft:artifacts/collected/soulflame=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"The Soul Mirror",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 255"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/soulflame=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Star Axe
execute if entity @s[advancements={evercraft:artifacts/collected/starfall_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Star Axe",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 256"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/starfall_axe=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Stormlander
execute if entity @s[advancements={evercraft:artifacts/collected/stormlander=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Stormlander",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 257"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/stormlander=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Truthseeker
execute if entity @s[advancements={evercraft:artifacts/collected/truthseeker=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Truthseeker",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 258"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/truthseeker=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Void Touched Blade
execute if entity @s[advancements={evercraft:artifacts/collected/voidbane=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Void Touched Blade",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 259"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/voidbane=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Whirlwind
execute if entity @s[advancements={evercraft:artifacts/collected/whirlwind=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Whirlwind",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 260"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/whirlwind=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Heavy Sword
execute if entity @s[advancements={evercraft:artifacts/collected/worldbreaker=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Heavy Sword",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 261"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/worldbreaker=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Turtle Boots
execute if entity @s[advancements={evercraft:artifacts/collected/cloudstep_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Turtle Boots",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 262"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/cloudstep_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Stalwart Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/elderguard_legs=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Stalwart Leggings",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 263"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/elderguard_legs=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Fireforged Boots
execute if entity @s[advancements={evercraft:artifacts/collected/phoenix_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Fireforged Boots",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 264"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/phoenix_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Fireforged Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/phoenix_helm=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Fireforged Helmet",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 265"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/phoenix_helm=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Fireforged Leggings
execute if entity @s[advancements={evercraft:artifacts/collected/phoenix_leggings=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Fireforged Leggings",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 266"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/phoenix_leggings=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Fireforged Chestplate
execute if entity @s[advancements={evercraft:artifacts/collected/phoenix_plate=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Fireforged Chestplate",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 267"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/phoenix_plate=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Shadow Walker Boots
execute if entity @s[advancements={evercraft:artifacts/collected/shadowstep_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Shadow Walker Boots",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 268"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/shadowstep_boots=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
# Grim Helmet
execute if entity @s[advancements={evercraft:artifacts/collected/warden_helm=true}] run tellraw @s [{text:"  \u2022 ",color:"light_purple"},{text:"Grim Helmet",color:"light_purple",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 269"},hover_event:{action:"show_text",value:"Click to view abilities"}}]
execute unless entity @s[advancements={evercraft:artifacts/collected/warden_helm=true}] run tellraw @s [{text:"  \u2022 ",color:"dark_gray"},{text:"???????????",obfuscated:true,color:"dark_gray"}]
tellraw @s ""
tellraw @s {text:"\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550",color:"light_purple",bold:true}
tellraw @s [{text:"  "},{text:"[Back to Exquisite]",color:"yellow",bold:true,click_event:{action:"run_command",command:"/trigger ec.codex set 50"},hover_event:{action:"show_text",value:"Return to Exquisite menu"}}]

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
