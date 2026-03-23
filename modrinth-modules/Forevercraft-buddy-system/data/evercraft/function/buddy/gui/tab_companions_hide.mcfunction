# Tab 1: Hide Companions Content
# Hides the existing pet grid, nav arrows, bottom bar (but keeps tab buttons + title + background)
# Uses Invisible tag approach — entities stay in place but become invisible

# Hide pet slots (item_display + interaction)
execute as @e[type=item_display,tag=companion.menuelement,tag=!bd.tab_element,predicate=evercraft:companions/check_id] run data merge entity @s {view_range:0f}
execute as @e[type=interaction,tag=companion.menuelement,tag=!bd.tab_element,predicate=evercraft:companions/check_id] run data merge entity @s {width:0f,height:0f}

# Hide text_display elements (nav, page info, buttons) but keep tabs and title
execute as @e[type=text_display,tag=companion.menuelement,tag=!bd.tab_element,tag=!companion.menutitle,predicate=evercraft:companions/check_id] run data merge entity @s {view_range:0f}
