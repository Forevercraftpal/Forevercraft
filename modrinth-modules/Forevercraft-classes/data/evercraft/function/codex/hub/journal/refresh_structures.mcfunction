# Journal — Refresh Structures Display
# 18 structures: found = green checkmark + name, not found = gray ???
# Run as the player

# 1: Ancient City
execute if score @s ec.struct_1 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt1,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Ancient City",color:"white"}]
execute unless score @s ec.struct_1 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt1,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 2: End City
execute if score @s ec.struct_2 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt2,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"End City",color:"white"}]
execute unless score @s ec.struct_2 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt2,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 6: Bastion Remnant
execute if score @s ec.struct_6 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt6,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Bastion Remnant",color:"white"}]
execute unless score @s ec.struct_6 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt6,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 3: Trial Chambers
execute if score @s ec.struct_3 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt3,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Trial Chambers",color:"white"}]
execute unless score @s ec.struct_3 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt3,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 4: Stronghold
execute if score @s ec.struct_4 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt4,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Stronghold",color:"white"}]
execute unless score @s ec.struct_4 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt4,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 5: Woodland Mansion
execute if score @s ec.struct_5 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt5,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Woodland Mansion",color:"white"}]
execute unless score @s ec.struct_5 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt5,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 7: Nether Fortress
execute if score @s ec.struct_7 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt7,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Nether Fortress",color:"white"}]
execute unless score @s ec.struct_7 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt7,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 8: Ocean Monument
execute if score @s ec.struct_8 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt8,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Ocean Monument",color:"white"}]
execute unless score @s ec.struct_8 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt8,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 9: Desert Pyramid
execute if score @s ec.struct_9 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt9,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Desert Pyramid",color:"white"}]
execute unless score @s ec.struct_9 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt9,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 10: Jungle Pyramid
execute if score @s ec.struct_10 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt10,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Jungle Pyramid",color:"white"}]
execute unless score @s ec.struct_10 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt10,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 17: Mineshaft
execute if score @s ec.struct_17 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt17,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Mineshaft",color:"white"}]
execute unless score @s ec.struct_17 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt17,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 11: Shipwreck
execute if score @s ec.struct_11 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt11,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Shipwreck",color:"white"}]
execute unless score @s ec.struct_11 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt11,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 12: Ocean Ruin
execute if score @s ec.struct_12 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt12,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Ocean Ruin",color:"white"}]
execute unless score @s ec.struct_12 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt12,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 13: Igloo
execute if score @s ec.struct_13 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt13,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Igloo",color:"white"}]
execute unless score @s ec.struct_13 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt13,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 14: Pillager Outpost
execute if score @s ec.struct_14 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt14,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Pillager Outpost",color:"white"}]
execute unless score @s ec.struct_14 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt14,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 15: Trail Ruins
execute if score @s ec.struct_15 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt15,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Trail Ruins",color:"white"}]
execute unless score @s ec.struct_15 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt15,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 16: Village
execute if score @s ec.struct_16 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt16,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Village",color:"white"}]
execute unless score @s ec.struct_16 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt16,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# 18: Ruined Portal
execute if score @s ec.struct_18 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt18,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Ruined Portal",color:"white"}]
execute unless score @s ec.struct_18 matches 1.. run data modify entity @e[type=text_display,tag=Adv.JnSt18,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
