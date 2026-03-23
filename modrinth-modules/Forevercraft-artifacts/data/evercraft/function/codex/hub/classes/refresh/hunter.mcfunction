# Classes Refresh — Hunter Crossbows
# Run as the player

execute if entity @s[advancements={evercraft:artifacts/collected/windrunner=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_windrunner,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Rapid Crossbow",color:"white"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/windrunner=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_windrunner,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/windrunner=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_windrunner,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Rapid Crossbow",color:"white"}]

execute if entity @s[advancements={evercraft:artifacts/collected/air_strike=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_air_strike,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Firebolt Thrower",color:"dark_blue"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/air_strike=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_air_strike,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/air_strike=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_air_strike,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Firebolt Thrower",color:"dark_blue"}]

execute if entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_acacia_ballista,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Acacia Ballista",color:"aqua"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_acacia_ballista,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/acacia_ballista=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_acacia_ballista,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Acacia Ballista",color:"aqua"}]

execute if entity @s[advancements={evercraft:artifacts/collected/venomfang_crossbow=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_venomfang_crossbow,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Corrupted Crossbow",color:"dark_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/venomfang_crossbow=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_venomfang_crossbow,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/venomfang_crossbow=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_venomfang_crossbow,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Corrupted Crossbow",color:"dark_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/echo_shot=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_echo_shot,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Echo Shot",color:"light_purple"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/echo_shot=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_echo_shot,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/echo_shot=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_echo_shot,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Echo Shot",color:"light_purple"}]

execute if entity @s[advancements={evercraft:artifacts/collected/awper_hand=true}] run data modify entity @e[type=text_display,tag=Adv.ClsArt_awper_hand,distance=..5,limit=1] text set value [{text:"✓ ",color:"green"},{text:"Butterfly Crossbow",color:"gold"}]
execute unless entity @s[advancements={evercraft:artifacts/collected/awper_hand=true}] unless entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_awper_hand,distance=..5,limit=1] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[advancements={evercraft:artifacts/collected/awper_hand=true}] if entity @s[tag=ec.wishing_star_active] run data modify entity @e[type=text_display,tag=Adv.ClsArt_awper_hand,distance=..5,limit=1] text set value [{text:"\u2606 ",color:"yellow"},{text:"Butterfly Crossbow",color:"gold"}]

# Class Affinity display
function evercraft:affinity/gui/show_affinity {abbrev:"ht", y:"1.15"}
