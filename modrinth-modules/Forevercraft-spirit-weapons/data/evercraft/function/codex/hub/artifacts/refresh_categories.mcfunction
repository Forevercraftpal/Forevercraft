# Artifact Collection — Refresh Category Counts
# Updates category description text based on current tier
# Shows static totals per tier/category (dynamic counts added later)
# Run as the player

# Weapons counts per tier
execute if score @s adv.gui_art_tier matches 1 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc0,limit=1,sort=nearest] text set value {text:"10 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 2 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc0,limit=1,sort=nearest] text set value {text:"10 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 3 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc0,limit=1,sort=nearest] text set value {text:"17 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 4 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc0,limit=1,sort=nearest] text set value {text:"17 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 5 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc0,limit=1,sort=nearest] text set value {text:"33 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 6 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc0,limit=1,sort=nearest] text set value {text:"31 artifacts",color:"gray"}

# Armor counts per tier
execute if score @s adv.gui_art_tier matches 1 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc1,limit=1,sort=nearest] text set value {text:"5 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 2 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc1,limit=1,sort=nearest] text set value {text:"5 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 3 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc1,limit=1,sort=nearest] text set value {text:"5 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 4 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc1,limit=1,sort=nearest] text set value {text:"60 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 5 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc1,limit=1,sort=nearest] text set value {text:"16 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 6 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc1,limit=1,sort=nearest] text set value {text:"34 artifacts",color:"gray"}

# Accessories counts per tier
execute if score @s adv.gui_art_tier matches 1 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc2,limit=1,sort=nearest] text set value {text:"3 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 2 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc2,limit=1,sort=nearest] text set value {text:"3 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 3 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc2,limit=1,sort=nearest] text set value {text:"4 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 4 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc2,limit=1,sort=nearest] text set value {text:"14 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 5 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc2,limit=1,sort=nearest] text set value {text:"11 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 6 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc2,limit=1,sort=nearest] text set value {text:"11 artifacts",color:"gray"}

# Tools counts per tier
execute if score @s adv.gui_art_tier matches 1 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc3,limit=1,sort=nearest] text set value {text:"5 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 2 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc3,limit=1,sort=nearest] text set value {text:"5 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 3 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc3,limit=1,sort=nearest] text set value {text:"5 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 4 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc3,limit=1,sort=nearest] text set value {text:"18 artifacts",color:"gray"}
execute if score @s adv.gui_art_tier matches 5 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc3,limit=1,sort=nearest] text set value {text:"1 artifact",color:"gray"}
execute if score @s adv.gui_art_tier matches 6 run data modify entity @e[type=text_display,tag=Adv.ArtCatDesc3,limit=1,sort=nearest] text set value {text:"5 artifacts",color:"gray"}
