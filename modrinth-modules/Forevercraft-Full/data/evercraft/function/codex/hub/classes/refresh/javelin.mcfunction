# Classes Refresh — Javelin Tridents
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/norroen_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_norroen,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Norroen Trident",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/norroen_trident=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_norroen,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/norroen_trident=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_norroen,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Norroen Trident",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/ancient_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ancient,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Ancient Trident",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ancient_trident=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ancient,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/ancient_trident=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ancient,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Ancient Trident",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/royal_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_royal,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Royal Trident",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/royal_trident=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_royal,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/royal_trident=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_royal,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Royal Trident",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/fantasy_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_fantasy,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Fantasy Trident",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_trident=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_fantasy,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/fantasy_trident=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_fantasy,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Fantasy Trident",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/shuriken_of_ice=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_shuriken,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Shuriken of Ice",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/shuriken_of_ice=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_shuriken,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/shuriken_of_ice=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_shuriken,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Shuriken of Ice",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/crucible_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_crucible,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Crucible Trident",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/crucible_trident=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_crucible,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/crucible_trident=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_crucible,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Crucible Trident",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mjolnir,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mjolnir",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mjolnir,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mjolnir,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Mjolnir",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/ninja_trident=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ninja,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Titan's Shroud Trident",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ninja_trident=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ninja,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/ninja_trident=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ninja,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Titan's Shroud Trident",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/master_bolt=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_master_bolt,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Master Bolt",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/master_bolt=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_master_bolt,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/master_bolt=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_master_bolt,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Master Bolt",color:"gold"}]

# Class Affinity display (Javelin=8, Hoplite=9 share artifacts)
execute if score @s adv.gui_cls_id matches 8 run function evercraft:affinity/gui/show_affinity {abbrev:"jv", y:"1.15"}
execute if score @s adv.gui_cls_id matches 9 run function evercraft:affinity/gui/show_affinity {abbrev:"hp", y:"1.15"}
