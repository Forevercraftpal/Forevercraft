# Journal — Refresh Biomes Display
# 25 biomes: found = green checkmark + name, not found = gray ???
# Run as the player

# b0: Plains
execute if entity @s[tag=jn.b0] run data modify entity @e[type=text_display,tag=Adv.JnB0,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Plains",color:"white"}]
execute unless entity @s[tag=jn.b0] run data modify entity @e[type=text_display,tag=Adv.JnB0,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b1: Forest
execute if entity @s[tag=jn.b1] run data modify entity @e[type=text_display,tag=Adv.JnB1,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Forest",color:"white"}]
execute unless entity @s[tag=jn.b1] run data modify entity @e[type=text_display,tag=Adv.JnB1,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b2: Flower Forest
execute if entity @s[tag=jn.b2] run data modify entity @e[type=text_display,tag=Adv.JnB2,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Flower Forest",color:"white"}]
execute unless entity @s[tag=jn.b2] run data modify entity @e[type=text_display,tag=Adv.JnB2,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b3: Dark Forest
execute if entity @s[tag=jn.b3] run data modify entity @e[type=text_display,tag=Adv.JnB3,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Dark Forest",color:"white"}]
execute unless entity @s[tag=jn.b3] run data modify entity @e[type=text_display,tag=Adv.JnB3,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b4: Taiga
execute if entity @s[tag=jn.b4] run data modify entity @e[type=text_display,tag=Adv.JnB4,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Taiga",color:"white"}]
execute unless entity @s[tag=jn.b4] run data modify entity @e[type=text_display,tag=Adv.JnB4,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b5: Mountains
execute if entity @s[tag=jn.b5] run data modify entity @e[type=text_display,tag=Adv.JnB5,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Mountains",color:"white"}]
execute unless entity @s[tag=jn.b5] run data modify entity @e[type=text_display,tag=Adv.JnB5,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b6: Jungle
execute if entity @s[tag=jn.b6] run data modify entity @e[type=text_display,tag=Adv.JnB6,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Jungle",color:"white"}]
execute unless entity @s[tag=jn.b6] run data modify entity @e[type=text_display,tag=Adv.JnB6,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b7: Desert
execute if entity @s[tag=jn.b7] run data modify entity @e[type=text_display,tag=Adv.JnB7,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Desert",color:"white"}]
execute unless entity @s[tag=jn.b7] run data modify entity @e[type=text_display,tag=Adv.JnB7,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b8: Savanna
execute if entity @s[tag=jn.b8] run data modify entity @e[type=text_display,tag=Adv.JnB8,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Savanna",color:"white"}]
execute unless entity @s[tag=jn.b8] run data modify entity @e[type=text_display,tag=Adv.JnB8,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b9: Ocean
execute if entity @s[tag=jn.b9] run data modify entity @e[type=text_display,tag=Adv.JnB9,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Ocean",color:"white"}]
execute unless entity @s[tag=jn.b9] run data modify entity @e[type=text_display,tag=Adv.JnB9,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b10: River
execute if entity @s[tag=jn.b10] run data modify entity @e[type=text_display,tag=Adv.JnB10,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"River",color:"white"}]
execute unless entity @s[tag=jn.b10] run data modify entity @e[type=text_display,tag=Adv.JnB10,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b11: Swamp
execute if entity @s[tag=jn.b11] run data modify entity @e[type=text_display,tag=Adv.JnB11,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Swamp",color:"white"}]
execute unless entity @s[tag=jn.b11] run data modify entity @e[type=text_display,tag=Adv.JnB11,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b12: Mushroom Island
execute if entity @s[tag=jn.b12] run data modify entity @e[type=text_display,tag=Adv.JnB12,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Mushroom Island",color:"white"}]
execute unless entity @s[tag=jn.b12] run data modify entity @e[type=text_display,tag=Adv.JnB12,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b13: Ice Plains
execute if entity @s[tag=jn.b13] run data modify entity @e[type=text_display,tag=Adv.JnB13,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Ice Plains",color:"white"}]
execute unless entity @s[tag=jn.b13] run data modify entity @e[type=text_display,tag=Adv.JnB13,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b14: Badlands
execute if entity @s[tag=jn.b14] run data modify entity @e[type=text_display,tag=Adv.JnB14,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Badlands",color:"white"}]
execute unless entity @s[tag=jn.b14] run data modify entity @e[type=text_display,tag=Adv.JnB14,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b24: Pale Garden
execute if entity @s[tag=jn.b24] run data modify entity @e[type=text_display,tag=Adv.JnB24,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Pale Garden",color:"white"}]
execute unless entity @s[tag=jn.b24] run data modify entity @e[type=text_display,tag=Adv.JnB24,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b15: Lush Caves
execute if entity @s[tag=jn.b15] run data modify entity @e[type=text_display,tag=Adv.JnB15,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Lush Caves",color:"white"}]
execute unless entity @s[tag=jn.b15] run data modify entity @e[type=text_display,tag=Adv.JnB15,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b16: Dripstone Caves
execute if entity @s[tag=jn.b16] run data modify entity @e[type=text_display,tag=Adv.JnB16,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Dripstone Caves",color:"white"}]
execute unless entity @s[tag=jn.b16] run data modify entity @e[type=text_display,tag=Adv.JnB16,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b17: Deep Dark
execute if entity @s[tag=jn.b17] run data modify entity @e[type=text_display,tag=Adv.JnB17,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Deep Dark",color:"white"}]
execute unless entity @s[tag=jn.b17] run data modify entity @e[type=text_display,tag=Adv.JnB17,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b18: Nether Wastes
execute if entity @s[tag=jn.b18] run data modify entity @e[type=text_display,tag=Adv.JnB18,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Nether Wastes",color:"white"}]
execute unless entity @s[tag=jn.b18] run data modify entity @e[type=text_display,tag=Adv.JnB18,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b19: Crimson Forest
execute if entity @s[tag=jn.b19] run data modify entity @e[type=text_display,tag=Adv.JnB19,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Crimson Forest",color:"white"}]
execute unless entity @s[tag=jn.b19] run data modify entity @e[type=text_display,tag=Adv.JnB19,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b20: Warped Forest
execute if entity @s[tag=jn.b20] run data modify entity @e[type=text_display,tag=Adv.JnB20,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Warped Forest",color:"white"}]
execute unless entity @s[tag=jn.b20] run data modify entity @e[type=text_display,tag=Adv.JnB20,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b21: Basalt Deltas
execute if entity @s[tag=jn.b21] run data modify entity @e[type=text_display,tag=Adv.JnB21,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Basalt Deltas",color:"white"}]
execute unless entity @s[tag=jn.b21] run data modify entity @e[type=text_display,tag=Adv.JnB21,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b22: Soul Sand Valley
execute if entity @s[tag=jn.b22] run data modify entity @e[type=text_display,tag=Adv.JnB22,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Soul Sand Valley",color:"white"}]
execute unless entity @s[tag=jn.b22] run data modify entity @e[type=text_display,tag=Adv.JnB22,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
# b23: The End
execute if entity @s[tag=jn.b23] run data modify entity @e[type=text_display,tag=Adv.JnB23,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"The End",color:"white"}]
execute unless entity @s[tag=jn.b23] run data modify entity @e[type=text_display,tag=Adv.JnB23,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
