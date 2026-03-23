# Pantry Menu — Refresh
# Updates all slot text displays and page indicator for the current page

# Get pid into temp
execute store result storage evercraft:pantry temp.pid int 1 run scoreboard players get @s ec.pid

# Update page indicator text
execute if score @s ec.pantry_page matches 0 at @s as @e[type=text_display,tag=ec.pantry_page_txt,distance=..5] run data modify entity @s text set value {text:"Page 1/3",color:"white"}
execute if score @s ec.pantry_page matches 1 at @s as @e[type=text_display,tag=ec.pantry_page_txt,distance=..5] run data modify entity @s text set value {text:"Page 2/3",color:"white"}
execute if score @s ec.pantry_page matches 2 at @s as @e[type=text_display,tag=ec.pantry_page_txt,distance=..5] run data modify entity @s text set value {text:"Page 3/3",color:"white"}

# Set slot names + pid for each page in temp.rargs, then call refresh_slots
execute if score @s ec.pantry_page matches 0 run data modify storage evercraft:pantry temp.rargs set value {s0:"s0",s1:"s1",s2:"s2",s3:"s3",s4:"s4",s5:"s5",s6:"s6",s7:"s7",s8:"s8"}
execute if score @s ec.pantry_page matches 1 run data modify storage evercraft:pantry temp.rargs set value {s0:"s9",s1:"s10",s2:"s11",s3:"s12",s4:"s13",s5:"s14",s6:"s15",s7:"s16",s8:"s17"}
execute if score @s ec.pantry_page matches 2 run data modify storage evercraft:pantry temp.rargs set value {s0:"s18",s1:"s19",s2:"s20",s3:"s21",s4:"s22",s5:"s23",s6:"s24",s7:"s25",s8:"s26"}

# Add pid to the rargs object so macro has both pid and slot names
data modify storage evercraft:pantry temp.rargs.pid set from storage evercraft:pantry temp.pid

function evercraft:pantry/menu/refresh_slots with storage evercraft:pantry temp.rargs
