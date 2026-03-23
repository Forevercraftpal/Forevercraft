# Classes Refresh — Berserker Axes
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/highland_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_highland_axe,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Highland Axe",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/highland_axe=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_highland_axe,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/highland_axe=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_highland_axe,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Highland Axe",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/double_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_double_axe,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Double Axe",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/double_axe=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_double_axe,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/double_axe=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_double_axe,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Double Axe",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/fantasy_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_fantasy_axe,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Fantasy Axe",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_axe=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_fantasy_axe,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_axe=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_fantasy_axe,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Fantasy Axe",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/anchor=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_anchor,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Anchor",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/anchor=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_anchor,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/anchor=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_anchor,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Anchor",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/morning_star=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_morning_star,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Morning Star",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/morning_star=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_morning_star,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/morning_star=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_morning_star,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Morning Star",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_axeblade,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Axeblade",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_axeblade,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/axeblade=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_axeblade,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Axeblade",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/leviathan_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_leviathan_axe,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Leviathan Axe",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/leviathan_axe=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_leviathan_axe,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/leviathan_axe=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_leviathan_axe,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Leviathan Axe",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/starfall_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_starfall_axe,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Starfall Axe",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/starfall_axe=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_starfall_axe,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/starfall_axe=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_starfall_axe,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Starfall Axe",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/whirlwind=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_whirlwind,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Whirlwind",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/whirlwind=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_whirlwind,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/whirlwind=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_whirlwind,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Whirlwind",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/axe_of_honor=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_axe_of_honor,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Axe of Honor",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/axe_of_honor=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_axe_of_honor,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/axe_of_honor=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_axe_of_honor,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Axe of Honor",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/kratos_axe=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_kratos_axe,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dragonslayer Axe",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/kratos_axe=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_kratos_axe,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/kratos_axe=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_kratos_axe,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Dragonslayer Axe",color:"gold"}]

# Class Affinity display
function evercraft:affinity/gui/show_affinity {abbrev:"bk", y:"1.15"}
