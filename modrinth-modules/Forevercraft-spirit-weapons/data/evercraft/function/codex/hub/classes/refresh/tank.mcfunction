# Classes Refresh — Tank Shields
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/deku_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_deku_shield,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Deku Shield",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/deku_shield=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_deku_shield,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/deku_shield=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_deku_shield,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Deku Shield",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/tower_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_tower_shield,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Tower Shield",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/tower_shield=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_tower_shield,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/tower_shield=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_tower_shield,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Tower Shield",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonslayer_shield,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dragonslayer Shield",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonslayer_shield,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonslayer_shield=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonslayer_shield,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Dragonslayer Shield",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/dragonmaster_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonmaster_shield,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Astract",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_shield=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonmaster_shield,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonmaster_shield=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonmaster_shield,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Astract",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/golden_goliath_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_golden_goliath_shield,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Order of the Stone Shield",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/golden_goliath_shield=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_golden_goliath_shield,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/golden_goliath_shield=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_golden_goliath_shield,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Order of the Stone Shield",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/command_block_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_command_block_shield,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Ellegaard's Shield",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/command_block_shield=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_command_block_shield,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/command_block_shield=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_command_block_shield,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Ellegaard's Shield",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/drowned_king_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_drowned_king_shield,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Drowned King Shield",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/drowned_king_shield=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_drowned_king_shield,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/drowned_king_shield=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_drowned_king_shield,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Drowned King Shield",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/trial_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_trial_shield,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Trial Shield",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/trial_shield=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_trial_shield,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/trial_shield=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_trial_shield,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Trial Shield",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/ocean_tower_shield=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ocean_tower_shield,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Ocean Tower Shield",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ocean_tower_shield=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ocean_tower_shield,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/ocean_tower_shield=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_ocean_tower_shield,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Ocean Tower Shield",color:"aqua"}]

# Class Affinity display (Tank=12, Knight=13 share artifacts)
execute if score @s adv.gui_cls_id matches 12 run function evercraft:affinity/gui/show_affinity {abbrev:"tk", y:"1.15"}
execute if score @s adv.gui_cls_id matches 13 run function evercraft:affinity/gui/show_affinity {abbrev:"kn", y:"1.15"}
