# Satchel Menu — Refresh all slot displays (macro)
# Args: bid (bag ID)

# Slot 0
$execute if data storage evercraft:satchel bags.$(bid).s0.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s0_txt,distance=..5] run data modify entity @s text set value [{text:"1. ",color:"gray"},{text:"",color:"yellow",extra:[{storage:"evercraft:satchel",nbt:"bags.$(bid).s0.name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute unless data storage evercraft:satchel bags.$(bid).s0.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s0_txt,distance=..5] run data modify entity @s text set value [{text:"1. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 1
$execute if data storage evercraft:satchel bags.$(bid).s1.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s1_txt,distance=..5] run data modify entity @s text set value [{text:"2. ",color:"gray"},{text:"",color:"yellow",extra:[{storage:"evercraft:satchel",nbt:"bags.$(bid).s1.name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute unless data storage evercraft:satchel bags.$(bid).s1.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s1_txt,distance=..5] run data modify entity @s text set value [{text:"2. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 2
$execute if data storage evercraft:satchel bags.$(bid).s2.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s2_txt,distance=..5] run data modify entity @s text set value [{text:"3. ",color:"gray"},{text:"",color:"yellow",extra:[{storage:"evercraft:satchel",nbt:"bags.$(bid).s2.name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute unless data storage evercraft:satchel bags.$(bid).s2.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s2_txt,distance=..5] run data modify entity @s text set value [{text:"3. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 3
$execute if data storage evercraft:satchel bags.$(bid).s3.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s3_txt,distance=..5] run data modify entity @s text set value [{text:"4. ",color:"gray"},{text:"",color:"yellow",extra:[{storage:"evercraft:satchel",nbt:"bags.$(bid).s3.name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute unless data storage evercraft:satchel bags.$(bid).s3.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s3_txt,distance=..5] run data modify entity @s text set value [{text:"4. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 4
$execute if data storage evercraft:satchel bags.$(bid).s4.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s4_txt,distance=..5] run data modify entity @s text set value [{text:"5. ",color:"gray"},{text:"",color:"yellow",extra:[{storage:"evercraft:satchel",nbt:"bags.$(bid).s4.name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute unless data storage evercraft:satchel bags.$(bid).s4.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s4_txt,distance=..5] run data modify entity @s text set value [{text:"5. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 5
$execute if data storage evercraft:satchel bags.$(bid).s5.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s5_txt,distance=..5] run data modify entity @s text set value [{text:"6. ",color:"gray"},{text:"",color:"yellow",extra:[{storage:"evercraft:satchel",nbt:"bags.$(bid).s5.name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute unless data storage evercraft:satchel bags.$(bid).s5.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s5_txt,distance=..5] run data modify entity @s text set value [{text:"6. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 6
$execute if data storage evercraft:satchel bags.$(bid).s6.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s6_txt,distance=..5] run data modify entity @s text set value [{text:"7. ",color:"gray"},{text:"",color:"yellow",extra:[{storage:"evercraft:satchel",nbt:"bags.$(bid).s6.name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute unless data storage evercraft:satchel bags.$(bid).s6.artifact at @a[tag=ec.satchel_in_menu] as @e[type=text_display,tag=ec.satchel_s6_txt,distance=..5] run data modify entity @s text set value [{text:"7. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]
