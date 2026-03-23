# Guild Menu — Update nav button highlighting
# Run as player. Reads ec.guild_page to set active tab white+bold, others gray.

# Guild tab (page 1)
execute if score @s ec.guild_page matches 1 as @e[type=text_display,tag=ec.guild_nav_info_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Guild",color:"white",bold:true}
execute unless score @s ec.guild_page matches 1 as @e[type=text_display,tag=ec.guild_nav_info_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Guild",color:"gray"}

# Members tab (page 2)
execute if score @s ec.guild_page matches 2 as @e[type=text_display,tag=ec.guild_nav_members_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Members",color:"white",bold:true}
execute unless score @s ec.guild_page matches 2 as @e[type=text_display,tag=ec.guild_nav_members_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Members",color:"gray"}

# Donate tab (page 3)
execute if score @s ec.guild_page matches 3 as @e[type=text_display,tag=ec.guild_nav_donate_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Donate",color:"white",bold:true}
execute unless score @s ec.guild_page matches 3 as @e[type=text_display,tag=ec.guild_nav_donate_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Donate",color:"gray"}

# Manage tab (page 4)
execute if score @s ec.guild_page matches 4 as @e[type=text_display,tag=ec.guild_nav_manage_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Manage",color:"white",bold:true}
execute unless score @s ec.guild_page matches 4 as @e[type=text_display,tag=ec.guild_nav_manage_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Manage",color:"gray"}

# Warp tab (page 5)
execute if score @s ec.guild_page matches 5 as @e[type=text_display,tag=ec.guild_nav_warp_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Warp",color:"white",bold:true}
execute unless score @s ec.guild_page matches 5 as @e[type=text_display,tag=ec.guild_nav_warp_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Warp",color:"gray"}

# Events tab (page 6)
execute if score @s ec.guild_page matches 6 as @e[type=text_display,tag=ec.guild_nav_event_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Events",color:"white",bold:true}
execute unless score @s ec.guild_page matches 6 as @e[type=text_display,tag=ec.guild_nav_event_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Events",color:"gray"}

# Allies tab (page 7)
execute if score @s ec.guild_page matches 7 as @e[type=text_display,tag=ec.guild_nav_allies_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Allies",color:"white",bold:true}
execute unless score @s ec.guild_page matches 7 as @e[type=text_display,tag=ec.guild_nav_allies_txt,distance=..5,limit=1] run data modify entity @s text set value {text:"Allies",color:"gray"}
