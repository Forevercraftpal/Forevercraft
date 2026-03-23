# Journal — Refresh Secrets Display
# 5 secrets: found = name + achievement text, not found = ??? + hint
# Run as the player

# s1: Depths of the World
execute if entity @s[tag=jn.s1] run data modify entity @e[type=text_display,tag=Adv.JnS1,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Depths of the World",color:"light_purple"}]
execute if entity @s[tag=jn.s1] run data modify entity @e[type=text_display,tag=Adv.JnS1D,limit=1,sort=nearest] text set value {text:"Ventured below Y -48",color:"gray",italic:true}
execute unless entity @s[tag=jn.s1] run data modify entity @e[type=text_display,tag=Adv.JnS1,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[tag=jn.s1] run data modify entity @e[type=text_display,tag=Adv.JnS1D,limit=1,sort=nearest] text set value {text:"Go deeper...",color:"dark_gray",italic:true}

# s2: Sky Wanderer
execute if entity @s[tag=jn.s2] run data modify entity @e[type=text_display,tag=Adv.JnS2,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Sky Wanderer",color:"light_purple"}]
execute if entity @s[tag=jn.s2] run data modify entity @e[type=text_display,tag=Adv.JnS2D,limit=1,sort=nearest] text set value {text:"Reached above Y 300",color:"gray",italic:true}
execute unless entity @s[tag=jn.s2] run data modify entity @e[type=text_display,tag=Adv.JnS2,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[tag=jn.s2] run data modify entity @e[type=text_display,tag=Adv.JnS2D,limit=1,sort=nearest] text set value {text:"Reach for the sky...",color:"dark_gray",italic:true}

# s3: Dimensional Traveler
execute if entity @s[tag=jn.s3] run data modify entity @e[type=text_display,tag=Adv.JnS3,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Dimensional Traveler",color:"light_purple"}]
execute if entity @s[tag=jn.s3] run data modify entity @e[type=text_display,tag=Adv.JnS3D,limit=1,sort=nearest] text set value {text:"Visited all 3 dimensions",color:"gray",italic:true}
execute unless entity @s[tag=jn.s3] run data modify entity @e[type=text_display,tag=Adv.JnS3,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[tag=jn.s3] run data modify entity @e[type=text_display,tag=Adv.JnS3D,limit=1,sort=nearest] text set value {text:"There are other worlds...",color:"dark_gray",italic:true}

# s4: Lore Collector
execute if entity @s[tag=jn.s4] run data modify entity @e[type=text_display,tag=Adv.JnS4,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Lore Collector",color:"light_purple"}]
execute if entity @s[tag=jn.s4] run data modify entity @e[type=text_display,tag=Adv.JnS4D,limit=1,sort=nearest] text set value {text:"Found all 6 anecdotes",color:"gray",italic:true}
execute unless entity @s[tag=jn.s4] run data modify entity @e[type=text_display,tag=Adv.JnS4,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[tag=jn.s4] run data modify entity @e[type=text_display,tag=Adv.JnS4D,limit=1,sort=nearest] text set value {text:"Gather the stories of the world...",color:"dark_gray",italic:true}

# s5: World Explorer
execute if entity @s[tag=jn.s5] run data modify entity @e[type=text_display,tag=Adv.JnS5,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"World Explorer",color:"light_purple"}]
execute if entity @s[tag=jn.s5] run data modify entity @e[type=text_display,tag=Adv.JnS5D,limit=1,sort=nearest] text set value {text:"Explored 15+ structure types",color:"gray",italic:true}
execute unless entity @s[tag=jn.s5] run data modify entity @e[type=text_display,tag=Adv.JnS5,limit=1,sort=nearest] text set value {text:"? ???",color:"dark_gray"}
execute unless entity @s[tag=jn.s5] run data modify entity @e[type=text_display,tag=Adv.JnS5D,limit=1,sort=nearest] text set value {text:"Leave no stone unturned...",color:"dark_gray",italic:true}
