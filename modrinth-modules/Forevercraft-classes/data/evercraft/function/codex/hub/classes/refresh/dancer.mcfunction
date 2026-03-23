# Classes Refresh — Dancer Gauntlets
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/mauler=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mauler,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mauler",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mauler=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mauler,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/mauler=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mauler,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Mauler",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/dust_storm=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dust_storm,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dust Storm",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dust_storm=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dust_storm,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/dust_storm=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dust_storm,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Dust Storm",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/plate_knuckle=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_plate_knuckle,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Plate Knuckle",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/plate_knuckle=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_plate_knuckle,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/plate_knuckle=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_plate_knuckle,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Plate Knuckle",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/golden_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_golden_gauntlet,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Golden Gauntlet",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golden_gauntlet=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_golden_gauntlet,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/golden_gauntlet=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_golden_gauntlet,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Golden Gauntlet",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/order_of_the_stone_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_order_of_the_stone_gauntlet,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Order of the Stone Gauntlet",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/order_of_the_stone_gauntlet=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_order_of_the_stone_gauntlet,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/order_of_the_stone_gauntlet=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_order_of_the_stone_gauntlet,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Order of the Stone Gauntlet",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/prismarine_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_prismarine_gauntlet,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Prismarine Gauntlet",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/prismarine_gauntlet=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_prismarine_gauntlet,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/prismarine_gauntlet=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_prismarine_gauntlet,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Prismarine Gauntlet",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/red_gauntlet=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_red_gauntlet,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Red Gauntlet",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/red_gauntlet=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_red_gauntlet,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/red_gauntlet=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_red_gauntlet,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Red Gauntlet",color:"gold"}]

# Class Affinity display
function evercraft:affinity/gui/show_affinity {abbrev:"dn", y:"1.15"}
