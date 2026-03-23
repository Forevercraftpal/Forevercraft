# Tab 1: Show Companions Content
# Restores visibility of existing pet grid, nav arrows, bottom bar

# Restore item_display elements
execute as @e[type=item_display,tag=companion.menuelement,tag=!bd.tab_element,predicate=evercraft:companions/check_id] run data merge entity @s {view_range:1f}

# Restore interaction elements
execute as @e[type=interaction,tag=companion.menuelement,tag=!bd.tab_element,predicate=evercraft:companions/check_id] run data merge entity @s {width:0.08f,height:0.08f}

# Restore text_display elements
execute as @e[type=text_display,tag=companion.menuelement,tag=!bd.tab_element,tag=!companion.menutitle,predicate=evercraft:companions/check_id] run data merge entity @s {view_range:1f}
