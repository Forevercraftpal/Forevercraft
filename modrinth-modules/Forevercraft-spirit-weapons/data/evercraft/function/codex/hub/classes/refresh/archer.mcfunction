# Classes Refresh — Archer Bows
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/hunting_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hunting_bow,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Hunting Bow",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hunting_bow=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hunting_bow,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/hunting_bow=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hunting_bow,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Hunting Bow",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/mechanical_shortbow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mechanical_shortbow,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mechanical Shortbow",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mechanical_shortbow=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mechanical_shortbow,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/mechanical_shortbow=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mechanical_shortbow,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Mechanical Shortbow",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/battle_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_battle_bow,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Battle Bow",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/battle_bow=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_battle_bow,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/battle_bow=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_battle_bow,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Battle Bow",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/longbow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_longbow,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Longbow",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/longbow=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_longbow,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/longbow=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_longbow,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Longbow",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/frostbite_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_frostbite_bow,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Shivering Bow",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frostbite_bow=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_frostbite_bow,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/frostbite_bow=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_frostbite_bow,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Shivering Bow",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/stormcaller_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_stormcaller_bow,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Light Bow",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/stormcaller_bow=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_stormcaller_bow,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/stormcaller_bow=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_stormcaller_bow,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Light Bow",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ancient_bow,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Ancient Bow",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ancient_bow,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/ancient_bow=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ancient_bow,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Ancient Bow",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/arm_cannon=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_arm_cannon,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Power Bow",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/arm_cannon=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_arm_cannon,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/arm_cannon=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_arm_cannon,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Power Bow",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/sabrewing=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_sabrewing,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Sabrewing",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/sabrewing=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_sabrewing,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/sabrewing=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_sabrewing,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Sabrewing",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/call_of_the_void=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_call_of_the_void,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Call of the Void",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/call_of_the_void=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_call_of_the_void,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/call_of_the_void=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_call_of_the_void,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Call of the Void",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/hunters_promise=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hunters_promise,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Nocturnal Bow",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/hunters_promise=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hunters_promise,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/hunters_promise=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hunters_promise,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Nocturnal Bow",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/gaster_blaster=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_gaster_blaster,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Gaster Blaster",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/gaster_blaster=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_gaster_blaster,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/gaster_blaster=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_gaster_blaster,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Gaster Blaster",color:"gold"}]

# Class Affinity display
function evercraft:affinity/gui/show_affinity {abbrev:"ar", y:"1.15"}
