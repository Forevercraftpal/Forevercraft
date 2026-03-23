# Pantry Menu — Refresh Slots (macro)
# Args from temp.rargs: pid, s0-s8 (slot names for this page)
# Updates each of the 9 slot text_displays with stored item name or [Empty]

# Slot 0
$execute if data storage evercraft:pantry bags.$(pid).$(s0).item run data modify storage evercraft:pantry temp._r0 set value [{text:"",color:"yellow",extra:[{storage:"evercraft:pantry",nbt:"bags.$(pid).$(s0).name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute if data storage evercraft:pantry bags.$(pid).$(s0).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s0_txt,distance=..5] run data modify entity @s text set from storage evercraft:pantry temp._r0
$execute unless data storage evercraft:pantry bags.$(pid).$(s0).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s0_txt,distance=..5] run data modify entity @s text set value [{text:"[Empty]",color:"dark_gray"}]

# Slot 1
$execute if data storage evercraft:pantry bags.$(pid).$(s1).item run data modify storage evercraft:pantry temp._r1 set value [{text:"",color:"yellow",extra:[{storage:"evercraft:pantry",nbt:"bags.$(pid).$(s1).name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute if data storage evercraft:pantry bags.$(pid).$(s1).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s1_txt,distance=..5] run data modify entity @s text set from storage evercraft:pantry temp._r1
$execute unless data storage evercraft:pantry bags.$(pid).$(s1).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s1_txt,distance=..5] run data modify entity @s text set value [{text:"[Empty]",color:"dark_gray"}]

# Slot 2
$execute if data storage evercraft:pantry bags.$(pid).$(s2).item run data modify storage evercraft:pantry temp._r2 set value [{text:"",color:"yellow",extra:[{storage:"evercraft:pantry",nbt:"bags.$(pid).$(s2).name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute if data storage evercraft:pantry bags.$(pid).$(s2).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s2_txt,distance=..5] run data modify entity @s text set from storage evercraft:pantry temp._r2
$execute unless data storage evercraft:pantry bags.$(pid).$(s2).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s2_txt,distance=..5] run data modify entity @s text set value [{text:"[Empty]",color:"dark_gray"}]

# Slot 3
$execute if data storage evercraft:pantry bags.$(pid).$(s3).item run data modify storage evercraft:pantry temp._r3 set value [{text:"",color:"yellow",extra:[{storage:"evercraft:pantry",nbt:"bags.$(pid).$(s3).name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute if data storage evercraft:pantry bags.$(pid).$(s3).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s3_txt,distance=..5] run data modify entity @s text set from storage evercraft:pantry temp._r3
$execute unless data storage evercraft:pantry bags.$(pid).$(s3).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s3_txt,distance=..5] run data modify entity @s text set value [{text:"[Empty]",color:"dark_gray"}]

# Slot 4
$execute if data storage evercraft:pantry bags.$(pid).$(s4).item run data modify storage evercraft:pantry temp._r4 set value [{text:"",color:"yellow",extra:[{storage:"evercraft:pantry",nbt:"bags.$(pid).$(s4).name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute if data storage evercraft:pantry bags.$(pid).$(s4).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s4_txt,distance=..5] run data modify entity @s text set from storage evercraft:pantry temp._r4
$execute unless data storage evercraft:pantry bags.$(pid).$(s4).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s4_txt,distance=..5] run data modify entity @s text set value [{text:"[Empty]",color:"dark_gray"}]

# Slot 5
$execute if data storage evercraft:pantry bags.$(pid).$(s5).item run data modify storage evercraft:pantry temp._r5 set value [{text:"",color:"yellow",extra:[{storage:"evercraft:pantry",nbt:"bags.$(pid).$(s5).name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute if data storage evercraft:pantry bags.$(pid).$(s5).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s5_txt,distance=..5] run data modify entity @s text set from storage evercraft:pantry temp._r5
$execute unless data storage evercraft:pantry bags.$(pid).$(s5).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s5_txt,distance=..5] run data modify entity @s text set value [{text:"[Empty]",color:"dark_gray"}]

# Slot 6
$execute if data storage evercraft:pantry bags.$(pid).$(s6).item run data modify storage evercraft:pantry temp._r6 set value [{text:"",color:"yellow",extra:[{storage:"evercraft:pantry",nbt:"bags.$(pid).$(s6).name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute if data storage evercraft:pantry bags.$(pid).$(s6).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s6_txt,distance=..5] run data modify entity @s text set from storage evercraft:pantry temp._r6
$execute unless data storage evercraft:pantry bags.$(pid).$(s6).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s6_txt,distance=..5] run data modify entity @s text set value [{text:"[Empty]",color:"dark_gray"}]

# Slot 7
$execute if data storage evercraft:pantry bags.$(pid).$(s7).item run data modify storage evercraft:pantry temp._r7 set value [{text:"",color:"yellow",extra:[{storage:"evercraft:pantry",nbt:"bags.$(pid).$(s7).name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute if data storage evercraft:pantry bags.$(pid).$(s7).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s7_txt,distance=..5] run data modify entity @s text set from storage evercraft:pantry temp._r7
$execute unless data storage evercraft:pantry bags.$(pid).$(s7).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s7_txt,distance=..5] run data modify entity @s text set value [{text:"[Empty]",color:"dark_gray"}]

# Slot 8
$execute if data storage evercraft:pantry bags.$(pid).$(s8).item run data modify storage evercraft:pantry temp._r8 set value [{text:"",color:"yellow",extra:[{storage:"evercraft:pantry",nbt:"bags.$(pid).$(s8).name",interpret:true}]},{text:" \u2726",color:"gold"}]
$execute if data storage evercraft:pantry bags.$(pid).$(s8).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s8_txt,distance=..5] run data modify entity @s text set from storage evercraft:pantry temp._r8
$execute unless data storage evercraft:pantry bags.$(pid).$(s8).item at @a[tag=ec.pantry_in_menu] as @e[type=text_display,tag=ec.pantry_s8_txt,distance=..5] run data modify entity @s text set value [{text:"[Empty]",color:"dark_gray"}]
