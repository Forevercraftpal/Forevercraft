# Pack Mule — Refresh slot text displays (macro)
$# $(pid) = player companion.id

# Slot 0
$execute if data storage evercraft:buddy mule.$(pid).s0.name at @a[tag=ec.mule_in_menu] as @e[type=text_display,tag=ec.mule_s0_txt,distance=..5] run data modify entity @s text set value [{"text":"1. ","color":"gray"},{"text":"","color":"yellow","extra":[{"storage":"evercraft:buddy","nbt":"mule.$(pid).s0.name","interpret":true}]},{"text":" \u25CF","color":"green"}]
$execute unless data storage evercraft:buddy mule.$(pid).s0.name at @a[tag=ec.mule_in_menu] as @e[type=text_display,tag=ec.mule_s0_txt,distance=..5] run data modify entity @s text set value [{"text":"1. ","color":"gray"},{"text":"[Empty]","color":"dark_gray"}]

# Slot 1
$execute if data storage evercraft:buddy mule.$(pid).s1.name at @a[tag=ec.mule_in_menu] as @e[type=text_display,tag=ec.mule_s1_txt,distance=..5] run data modify entity @s text set value [{"text":"2. ","color":"gray"},{"text":"","color":"yellow","extra":[{"storage":"evercraft:buddy","nbt":"mule.$(pid).s1.name","interpret":true}]},{"text":" \u25CF","color":"green"}]
$execute unless data storage evercraft:buddy mule.$(pid).s1.name at @a[tag=ec.mule_in_menu] as @e[type=text_display,tag=ec.mule_s1_txt,distance=..5] run data modify entity @s text set value [{"text":"2. ","color":"gray"},{"text":"[Empty]","color":"dark_gray"}]

# Slot 2
$execute if data storage evercraft:buddy mule.$(pid).s2.name at @a[tag=ec.mule_in_menu] as @e[type=text_display,tag=ec.mule_s2_txt,distance=..5] run data modify entity @s text set value [{"text":"3. ","color":"gray"},{"text":"","color":"yellow","extra":[{"storage":"evercraft:buddy","nbt":"mule.$(pid).s2.name","interpret":true}]},{"text":" \u25CF","color":"green"}]
$execute unless data storage evercraft:buddy mule.$(pid).s2.name at @a[tag=ec.mule_in_menu] as @e[type=text_display,tag=ec.mule_s2_txt,distance=..5] run data modify entity @s text set value [{"text":"3. ","color":"gray"},{"text":"[Empty]","color":"dark_gray"}]
