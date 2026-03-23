# Hero's Satchel Menu — Refresh all slot displays (macro)
# Args: bid (bag ID)

# Slot 0 — Thunderstrike Core
$execute if data storage evercraft:hero_satchel bags.$(bid).s0.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s0_txt,distance=..5] run data modify entity @s text set value [{text:" 1. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s0.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s0.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s0_txt,distance=..5] run data modify entity @s text set value [{text:" 1. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 1 — Soul Reaver
$execute if data storage evercraft:hero_satchel bags.$(bid).s1.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s1_txt,distance=..5] run data modify entity @s text set value [{text:" 2. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s1.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s1.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s1_txt,distance=..5] run data modify entity @s text set value [{text:" 2. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 2 — Earthshaker Core
$execute if data storage evercraft:hero_satchel bags.$(bid).s2.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s2_txt,distance=..5] run data modify entity @s text set value [{text:" 3. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s2.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s2.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s2_txt,distance=..5] run data modify entity @s text set value [{text:" 3. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 3 — Infernal Heart
$execute if data storage evercraft:hero_satchel bags.$(bid).s3.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s3_txt,distance=..5] run data modify entity @s text set value [{text:" 4. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s3.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s3.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s3_txt,distance=..5] run data modify entity @s text set value [{text:" 4. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 4 — Architect's Design
$execute if data storage evercraft:hero_satchel bags.$(bid).s4.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s4_txt,distance=..5] run data modify entity @s text set value [{text:" 5. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s4.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s4.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s4_txt,distance=..5] run data modify entity @s text set value [{text:" 5. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 5 — Void Sovereign's Eye
$execute if data storage evercraft:hero_satchel bags.$(bid).s5.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s5_txt,distance=..5] run data modify entity @s text set value [{text:" 6. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s5.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s5.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s5_txt,distance=..5] run data modify entity @s text set value [{text:" 6. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 6 — Soulkeeper's Ember
$execute if data storage evercraft:hero_satchel bags.$(bid).s6.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s6_txt,distance=..5] run data modify entity @s text set value [{text:" 7. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s6.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s6.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s6_txt,distance=..5] run data modify entity @s text set value [{text:" 7. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 7 — Behemoth's Heart
$execute if data storage evercraft:hero_satchel bags.$(bid).s7.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s7_txt,distance=..5] run data modify entity @s text set value [{text:" 8. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s7.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s7.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s7_txt,distance=..5] run data modify entity @s text set value [{text:" 8. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 8 — Thornheart Bloom
$execute if data storage evercraft:hero_satchel bags.$(bid).s8.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s8_txt,distance=..5] run data modify entity @s text set value [{text:" 9. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s8.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s8.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s8_txt,distance=..5] run data modify entity @s text set value [{text:" 9. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 9 — Abyssal Pearl
$execute if data storage evercraft:hero_satchel bags.$(bid).s9.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s9_txt,distance=..5] run data modify entity @s text set value [{text:"10. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s9.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s9.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s9_txt,distance=..5] run data modify entity @s text set value [{text:"10. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]

# Slot 10 — Nightmare Fragment
$execute if data storage evercraft:hero_satchel bags.$(bid).s10.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s10_txt,distance=..5] run data modify entity @s text set value [{text:"11. ",color:"gray"},{text:"",color:"#FF4500",extra:[{storage:"evercraft:hero_satchel",nbt:"bags.$(bid).s10.name",interpret:true}]},{text:" \u2620",color:"dark_red"}]
$execute unless data storage evercraft:hero_satchel bags.$(bid).s10.artifact at @a[tag=ec.hsatch_in_menu] as @e[type=text_display,tag=ec.hsatch_s10_txt,distance=..5] run data modify entity @s text set value [{text:"11. ",color:"gray"},{text:"[Empty]",color:"dark_gray"}]
