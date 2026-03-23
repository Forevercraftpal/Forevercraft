# Classes Refresh — Healer Artifacts
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/healer_bandages=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_bandages,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Medicinal Bandages",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_bandages=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_bandages,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_bandages=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_bandages,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Medicinal Bandages",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_poultice=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_poultice,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Herbal Poultice",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_poultice=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_poultice,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_poultice=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_poultice,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Herbal Poultice",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_salts=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_salts,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Smelling Salts",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_salts=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_salts,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_salts=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_salts,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Smelling Salts",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_balm=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_balm,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Soothing Balm",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_balm=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_balm,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_balm=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_balm,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Soothing Balm",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_chalice=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_chalice,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mending Chalice",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_chalice=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_chalice,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_chalice=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_chalice,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Mending Chalice",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_incense=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_incense,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Warding Incense",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_incense=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_incense,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_incense=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_incense,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Warding Incense",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_plume=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_plume,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Phoenix Plume",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_plume=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_plume,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_plume=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_plume,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Phoenix Plume",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_censer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_censer,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Radiant Censer",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_censer=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_censer,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_censer=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_censer,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Radiant Censer",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_lotus=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_lotus,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Celestial Lotus",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_lotus=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_lotus,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_lotus=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_lotus,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Celestial Lotus",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_tome=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_tome,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Lifewarden's Tome",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_tome=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_tome,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_tome=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_tome,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Lifewarden's Tome",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_ambrosia=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_ambrosia,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Endless Ambrosia",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_ambrosia=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_ambrosia,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_ambrosia=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_ambrosia,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Endless Ambrosia",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/healer_tears=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_tears,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Tears of the World Tree",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_tears=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_tears,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/healer_tears=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_healer_tears,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Tears of the World Tree",color:"gold"}]

# Class Affinity display
function evercraft:affinity/gui/show_affinity {abbrev:"hl", y:"1.15"}
