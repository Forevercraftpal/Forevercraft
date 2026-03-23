# Bestiary GUI — Update Page Label + Header
# Run at the anchor position

# Update page number display
execute as @e[type=text_display,tag=Bs.PageLabel,distance=..5,limit=1] store result score #bs_page bs.temp run scoreboard players get @a[tag=Adv.InMenu,distance=..15,limit=1,sort=nearest] adv.gui_page
execute if score #bs_page bs.temp matches 1 run data modify entity @e[type=text_display,tag=Bs.PageLabel,distance=..5,limit=1] text set value {text:"Page 1/6",color:"gray"}
execute if score #bs_page bs.temp matches 2 run data modify entity @e[type=text_display,tag=Bs.PageLabel,distance=..5,limit=1] text set value {text:"Page 2/6",color:"gray"}
execute if score #bs_page bs.temp matches 3 run data modify entity @e[type=text_display,tag=Bs.PageLabel,distance=..5,limit=1] text set value {text:"Page 3/6",color:"gray"}
execute if score #bs_page bs.temp matches 4 run data modify entity @e[type=text_display,tag=Bs.PageLabel,distance=..5,limit=1] text set value {text:"Page 4/6",color:"gray"}
execute if score #bs_page bs.temp matches 5 run data modify entity @e[type=text_display,tag=Bs.PageLabel,distance=..5,limit=1] text set value {text:"Page 5/6",color:"gray"}
execute if score #bs_page bs.temp matches 6 run data modify entity @e[type=text_display,tag=Bs.PageLabel,distance=..5,limit=1] text set value {text:"Page 6/6",color:"gray"}

# Update header text
execute if score #bs_page bs.temp matches 1 run data modify entity @e[type=text_display,tag=Bs.PageHeader,distance=..5,limit=1] text set value {text:"Accept & Track Challenges",color:"gray",italic:true}
execute if score #bs_page bs.temp matches 2..5 run data modify entity @e[type=text_display,tag=Bs.PageHeader,distance=..5,limit=1] text set value {text:"Bestiary — Monster Hunting Mastery",color:"dark_green",italic:true}
execute if score #bs_page bs.temp matches 6 run data modify entity @e[type=text_display,tag=Bs.PageHeader,distance=..5,limit=1] text set value {text:"Bestiary — World Boss Mastery",color:"dark_red",italic:true}
