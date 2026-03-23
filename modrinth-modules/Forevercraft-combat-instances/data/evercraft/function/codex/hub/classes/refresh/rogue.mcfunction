# Classes Refresh — Rogue Daggers
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/vex_iron_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_common_vex_iron_sword,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dagger",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/vex_iron_sword=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_common_vex_iron_sword,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/vex_iron_sword=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_common_vex_iron_sword,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Dagger",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/hellenic_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_uncommon_hellenic_sword,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Hellenic Sword",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hellenic_sword=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_uncommon_hellenic_sword,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/hellenic_sword=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_uncommon_hellenic_sword,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Hellenic Sword",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/soulreaper_scythe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_soulreaper,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Hidden Blade",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/soulreaper_scythe=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_soulreaper,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/soulreaper_scythe=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_soulreaper,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Hidden Blade",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_coral_blade,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Coral Blade",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_coral_blade,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/coral_blade=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_coral_blade,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Coral Blade",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_glacial_edge,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Fang of Frost",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_glacial_edge,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/glacial_edge=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_glacial_edge,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Fang of Frost",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/heartstealer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_heartstealer,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Heartstealer",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/heartstealer=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_heartstealer,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/heartstealer=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_heartstealer,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Heartstealer",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/voidbane=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_voidbane,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Void-Touched Blade",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/voidbane=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_voidbane,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/voidbane=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_voidbane,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Void-Touched Blade",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/soulflame=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_soulflame,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"The Soul Mirror",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/soulflame=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_soulflame,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/soulflame=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_soulflame,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"The Soul Mirror",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/the_beginning_and_the_end=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_the_beginning_and_the_end,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"The Beginning and The End",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/the_beginning_and_the_end=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_the_beginning_and_the_end,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/the_beginning_and_the_end=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_the_beginning_and_the_end,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"The Beginning and The End",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/xara_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_xara_sword,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Nameless Blade",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/xara_sword=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_xara_sword,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/xara_sword=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_xara_sword,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Nameless Blade",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/ender_dragon_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ender_dragon_sword,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Ender Dragon Blade",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_sword=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ender_dragon_sword,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/ender_dragon_sword=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ender_dragon_sword,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Ender Dragon Blade",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/zantetsuken=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_zantetsuken,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Zantetsuken",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/zantetsuken=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_zantetsuken,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/zantetsuken=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_zantetsuken,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Zantetsuken",color:"gold"}]

# Class Affinity display
function evercraft:affinity/gui/show_affinity {abbrev:"rg", y:"1.15"}
