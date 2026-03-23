# Wise Wanderer — Refresh GUI Display
# Update XP display and row availability colors
# Runs as the player with WW.InMenu tag

# Read current XP level
execute store result score #ww_xp adv.temp run experience query @s levels

# Update XP display text via macro
execute store result storage evercraft:ww xp_level int 1 run experience query @s levels
function evercraft:professions/jobs/wise_wanderer/gui/update_xp with storage evercraft:ww

# Gray out rows player can't afford
# Common (15)
execute if score #ww_xp adv.temp matches 15.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowCommon,limit=1,sort=nearest] text set value [{text:"  Common Crate",color:"white"},{text:"         15 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}]
execute unless score #ww_xp adv.temp matches 15.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowCommon,limit=1,sort=nearest] text set value [{text:"  Common Crate",color:"dark_gray"},{text:"         15 Lvls  ",color:"dark_gray"},{text:"[X]",color:"dark_red"}]

# Uncommon (30)
execute if score #ww_xp adv.temp matches 30.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowUncommon,limit=1,sort=nearest] text set value [{text:"  Uncommon Crate",color:"blue"},{text:"      30 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}]
execute unless score #ww_xp adv.temp matches 30.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowUncommon,limit=1,sort=nearest] text set value [{text:"  Uncommon Crate",color:"dark_gray"},{text:"      30 Lvls  ",color:"dark_gray"},{text:"[X]",color:"dark_red"}]

# Rare (50)
execute if score #ww_xp adv.temp matches 50.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowRare,limit=1,sort=nearest] text set value [{text:"  Rare Crate",color:"aqua"},{text:"            50 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}]
execute unless score #ww_xp adv.temp matches 50.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowRare,limit=1,sort=nearest] text set value [{text:"  Rare Crate",color:"dark_gray"},{text:"            50 Lvls  ",color:"dark_gray"},{text:"[X]",color:"dark_red"}]

# Ornate (75)
execute if score #ww_xp adv.temp matches 75.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowOrnate,limit=1,sort=nearest] text set value [{text:"  Ornate Crate",color:"dark_purple"},{text:"        75 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}]
execute unless score #ww_xp adv.temp matches 75.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowOrnate,limit=1,sort=nearest] text set value [{text:"  Ornate Crate",color:"dark_gray"},{text:"        75 Lvls  ",color:"dark_gray"},{text:"[X]",color:"dark_red"}]

# Exquisite (125)
execute if score #ww_xp adv.temp matches 125.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowExquisite,limit=1,sort=nearest] text set value [{text:"  Exquisite Crate",color:"light_purple"},{text:"   125 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}]
execute unless score #ww_xp adv.temp matches 125.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowExquisite,limit=1,sort=nearest] text set value [{text:"  Exquisite Crate",color:"dark_gray"},{text:"   125 Lvls  ",color:"dark_gray"},{text:"[X]",color:"dark_red"}]

# Mythical (250)
execute if score #ww_xp adv.temp matches 250.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowMythical,limit=1,sort=nearest] text set value [{text:"  Mythical Crate",color:"gold"},{text:"     250 Lvls  ",color:"gray"},{text:"[Buy]",color:"green",bold:true}]
execute unless score #ww_xp adv.temp matches 250.. run data modify entity @e[type=minecraft:text_display,tag=WW.RowMythical,limit=1,sort=nearest] text set value [{text:"  Mythical Crate",color:"dark_gray"},{text:"     250 Lvls  ",color:"dark_gray"},{text:"[X]",color:"dark_red"}]
