# Infinite Castle — Close Menu
# Run as: player

# Add starter tag (select functions will use this to call begin)
# Cancel button handler removes it after calling close
tag @s add ic.starter

# Kill menu entities
execute at @s run kill @e[type=text_display,tag=IC.MenuEl,distance=..5]
execute at @s run kill @e[type=interaction,tag=IC.MenuEl,distance=..5]
execute at @s run kill @e[type=item_display,tag=IC.MenuEl,distance=..5]

# Remove menu tag
tag @s remove IC.InMenu
