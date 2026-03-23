# ============================================================
# Stash Settings — Refresh all text displays with current state
# Run as: player with HS.InSettings
# ============================================================

# Tools
execute if entity @s[tag=hs.keep_tools] run data modify entity @e[type=text_display,tag=HS.KeepTools,distance=..7,limit=1] text set value [{text:"Tools",color:"yellow"},{text:"          ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_tools] run data modify entity @e[type=text_display,tag=HS.KeepTools,distance=..7,limit=1] text set value [{text:"Tools",color:"yellow"},{text:"          ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Weapons
execute if entity @s[tag=hs.keep_weapons] run data modify entity @e[type=text_display,tag=HS.KeepWeapons,distance=..7,limit=1] text set value [{text:"Weapons",color:"red"},{text:"      ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_weapons] run data modify entity @e[type=text_display,tag=HS.KeepWeapons,distance=..7,limit=1] text set value [{text:"Weapons",color:"red"},{text:"      ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Armor
execute if entity @s[tag=hs.keep_armor] run data modify entity @e[type=text_display,tag=HS.KeepArmor,distance=..7,limit=1] text set value [{text:"Armor",color:"aqua"},{text:"          ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_armor] run data modify entity @e[type=text_display,tag=HS.KeepArmor,distance=..7,limit=1] text set value [{text:"Armor",color:"aqua"},{text:"          ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Food
execute if entity @s[tag=hs.keep_food] run data modify entity @e[type=text_display,tag=HS.KeepFood,distance=..7,limit=1] text set value [{text:"Food",color:"green"},{text:"           ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_food] run data modify entity @e[type=text_display,tag=HS.KeepFood,distance=..7,limit=1] text set value [{text:"Food",color:"green"},{text:"           ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Mob Drops
execute if entity @s[tag=hs.keep_mob_drops] run data modify entity @e[type=text_display,tag=HS.KeepMobDrops,distance=..7,limit=1] text set value [{text:"Mob Drops",color:"dark_purple"},{text:"   ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_mob_drops] run data modify entity @e[type=text_display,tag=HS.KeepMobDrops,distance=..7,limit=1] text set value [{text:"Mob Drops",color:"dark_purple"},{text:"   ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Garden
execute if entity @s[tag=hs.keep_garden] run data modify entity @e[type=text_display,tag=HS.KeepGarden,distance=..7,limit=1] text set value [{text:"Garden",color:"dark_green"},{text:"        ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_garden] run data modify entity @e[type=text_display,tag=HS.KeepGarden,distance=..7,limit=1] text set value [{text:"Garden",color:"dark_green"},{text:"        ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Redstone
execute if entity @s[tag=hs.keep_redstone] run data modify entity @e[type=text_display,tag=HS.KeepRedstone,distance=..7,limit=1] text set value [{text:"Redstone",color:"dark_red"},{text:"     ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_redstone] run data modify entity @e[type=text_display,tag=HS.KeepRedstone,distance=..7,limit=1] text set value [{text:"Redstone",color:"dark_red"},{text:"     ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Amenities
execute if entity @s[tag=hs.keep_amenities] run data modify entity @e[type=text_display,tag=HS.KeepAmenities,distance=..7,limit=1] text set value [{text:"Amenities",color:"blue"},{text:"    ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_amenities] run data modify entity @e[type=text_display,tag=HS.KeepAmenities,distance=..7,limit=1] text set value [{text:"Amenities",color:"blue"},{text:"    ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Blocks
execute if entity @s[tag=hs.keep_blocks] run data modify entity @e[type=text_display,tag=HS.KeepBlocks,distance=..7,limit=1] text set value [{text:"Blocks",color:"white"},{text:"        ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_blocks] run data modify entity @e[type=text_display,tag=HS.KeepBlocks,distance=..7,limit=1] text set value [{text:"Blocks",color:"white"},{text:"        ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Materials
execute if entity @s[tag=hs.keep_materials] run data modify entity @e[type=text_display,tag=HS.KeepMaterials,distance=..7,limit=1] text set value [{text:"Materials",color:"gold"},{text:"    ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_materials] run data modify entity @e[type=text_display,tag=HS.KeepMaterials,distance=..7,limit=1] text set value [{text:"Materials",color:"gold"},{text:"    ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Artifacts
execute if entity @s[tag=hs.keep_artifacts] run data modify entity @e[type=text_display,tag=HS.KeepArtifacts,distance=..7,limit=1] text set value [{text:"Artifacts",color:"light_purple"},{text:"    ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_artifacts] run data modify entity @e[type=text_display,tag=HS.KeepArtifacts,distance=..7,limit=1] text set value [{text:"Artifacts",color:"light_purple"},{text:"    ",color:"gray"},{text:"[STASH]",color:"gray"}]

# Potions
execute if entity @s[tag=hs.keep_potions] run data modify entity @e[type=text_display,tag=HS.KeepPotions,distance=..7,limit=1] text set value [{text:"Potions",color:"dark_aqua"},{text:"      ",color:"gray"},{text:"[KEEP]",color:"green",bold:true}]
execute unless entity @s[tag=hs.keep_potions] run data modify entity @e[type=text_display,tag=HS.KeepPotions,distance=..7,limit=1] text set value [{text:"Potions",color:"dark_aqua"},{text:"      ",color:"gray"},{text:"[STASH]",color:"gray"}]
