# Classes Refresh — Striker Maces
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/highland_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_highland_mace,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Highland Mace",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/highland_mace=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_highland_mace,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/highland_mace=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_highland_mace,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Highland Mace",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/plunger=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_plunger,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Plunger",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/plunger=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_plunger,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/plunger=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_plunger,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Plunger",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/frying_pan=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_frying_pan,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Frying Pan",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/frying_pan=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_frying_pan,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/frying_pan=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_frying_pan,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Frying Pan",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/combat_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_combat_mace,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Combat Mace",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/combat_mace=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_combat_mace,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/combat_mace=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_combat_mace,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Combat Mace",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/earthshaker=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hammer_of_gravity,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Hammer of Gravity",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/earthshaker=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hammer_of_gravity,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/earthshaker=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_hammer_of_gravity,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Hammer of Gravity",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mjolnir,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mjolnir",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mjolnir,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/mjolnir=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mjolnir,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Mjolnir",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_pwnhammer,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Pwnhammer",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_pwnhammer,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/blastbreaker_mace=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_pwnhammer,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Pwnhammer",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/ban_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dev_hammer,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dev Hammer",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/ban_hammer=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dev_hammer,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/ban_hammer=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dev_hammer,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Dev Hammer",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/dragonheart_mace=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonheart_mace,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Dragonheart Mace",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonheart_mace=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonheart_mace,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/dragonheart_mace=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_dragonheart_mace,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Dragonheart Mace",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/mace_of_legends=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mace_of_legends,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Mace of Legends",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/mace_of_legends=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mace_of_legends,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/mace_of_legends=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_mace_of_legends,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Mace of Legends",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/stormlander=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_stormlander,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Stormlander",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/stormlander=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_stormlander,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/stormlander=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_stormlander,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Stormlander",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/romeo_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_portal_staff,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Portal Staff",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/romeo_hammer=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_portal_staff,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/romeo_hammer=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_portal_staff,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Portal Staff",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/xara_hammer=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_void_voyage,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Void Voyage",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/xara_hammer=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_void_voyage,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/xara_hammer=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_void_voyage,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Void Voyage",color:"gold"}]

execute if entity @s[advancements={evercraft:artifacts/collected/infernal_sword=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_infernal_sword,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Comet on a Stick",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/infernal_sword=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_infernal_sword,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/infernal_sword=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_infernal_sword,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Comet on a Stick",color:"gold"}]

# Class Affinity display (Striker=4, Sentinel=5 share artifacts)
execute if score @s adv.gui_cls_id matches 4 run function evercraft:affinity/gui/show_affinity {abbrev:"sk", y:"1.15"}
execute if score @s adv.gui_cls_id matches 5 run function evercraft:affinity/gui/show_affinity {abbrev:"kt", y:"1.15"}
