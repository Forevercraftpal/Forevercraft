# Bestiary Section — Update Page Label (standalone)
# Run as the page label text_display entity

# Map internal page 2-6 to display 1-5
execute if score @p[tag=Adv.InMenu,distance=..5] adv.gui_page matches 2 run data modify entity @s text set value {text:"Page 1/5",color:"gray"}
execute if score @p[tag=Adv.InMenu,distance=..5] adv.gui_page matches 3 run data modify entity @s text set value {text:"Page 2/5",color:"gray"}
execute if score @p[tag=Adv.InMenu,distance=..5] adv.gui_page matches 4 run data modify entity @s text set value {text:"Page 3/5",color:"gray"}
execute if score @p[tag=Adv.InMenu,distance=..5] adv.gui_page matches 5 run data modify entity @s text set value {text:"Page 4/5",color:"gray"}
execute if score @p[tag=Adv.InMenu,distance=..5] adv.gui_page matches 6 run data modify entity @s text set value {text:"Page 5/5",color:"gray"}
