# ============================================================
# Campfire Kitchen GUI — Tab Click Handler (Macro)
# Runs as the interaction entity, at its position
# Args: {tab: 0-4, tab_label: "[Combat]" etc}
# ============================================================

# Clear click data
data remove entity @s interaction

# Set category on the nearest player with menu open
$scoreboard players set @a[tag=CK.InMenu,distance=..5,limit=1] ec.ck_cat $(tab)

# Update tab highlights — reset all to gray, then highlight active
data modify entity @e[type=text_display,tag=CK.Tab0Text,distance=..5,limit=1] text set value {"text":"[Combat]","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Tab1Text,distance=..5,limit=1] text set value {"text":"[Mining]","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Tab2Text,distance=..5,limit=1] text set value {"text":"[Fortune]","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Tab3Text,distance=..5,limit=1] text set value {"text":"[Wayfarer]","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Tab4Text,distance=..5,limit=1] text set value {"text":"[Delicacy]","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Tab5Text,distance=..5,limit=1] text set value {"text":"[Seasonal]","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Tab6Text,distance=..5,limit=1] text set value {"text":"[Treats]","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Tab7Text,distance=..5,limit=1] text set value {"text":"[Rations]","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Tab8Text,distance=..5,limit=1] text set value {"text":"[Feast]","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Tab9Text,distance=..5,limit=1] text set value {"text":"[Preserve]","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Tab10Text,distance=..5,limit=1] text set value {"text":"[Spirit]","color":"gray"}

# Highlight active tab (yellow + bold)
$data modify entity @e[type=text_display,tag=CK.Tab$(tab)Text,distance=..5,limit=1] text set value {"text":"$(tab_label)","color":"yellow","bold":true}

# Sound
playsound minecraft:ui.button.click master @a[tag=CK.InMenu,distance=..5,limit=1] ~ ~ ~ 0.5 1.0

# Refresh recipe displays for new category
execute as @a[tag=CK.InMenu,distance=..5,limit=1] run function evercraft:cooking/gui/refresh
