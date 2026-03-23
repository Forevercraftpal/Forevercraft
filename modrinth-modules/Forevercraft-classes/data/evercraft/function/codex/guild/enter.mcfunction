# Codex Guild — Enter (section 11)
# Spawns guild menu content inside the codex frame
# Run as the player, called from enter_section_inner
# Codex has 5 tabs: Members, Allies, Guild, Events, Manage (no Donate/Warp)

# Tag player for guild menu tick
tag @s add ec.guild_in_menu
tag @s add ec.guild_remote_menu
scoreboard players set @s ec.guild_page 1
scoreboard players set @s ec.guild_menu_time 0

# === GUILD BACKGROUND (position anchor for page content refresh functions) ===
# Invisible behind codex bg, but ec.guild_menu_bg tag is required by spawn_info_rows etc.
execute rotated ~ 0 positioned ^ ^1.95 ^2.3 run summon item_display ~ ~ ~ {Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_menu_bg"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.03f],scale:[0.01f,0.01f,0.01f]}}

# Title is handled by set_section_title (no separate entity needed)

# === NAV TABS (5 tabs: Members, Allies, Guild, Events, Manage) ===
# Spacing: 0.34 step, 0.22 scale to prevent overlap when bold

# [Members] (page 2)
execute rotated ~ 0 positioned ^0.85 ^1.27 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_nav_members_txt"],billboard:"center",text:{text:"Members",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^0.85 ^1.23 ^2.3 run summon interaction ~ ~ ~ {Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_nav_members"],width:0.22f,height:0.06f,response:1b}

# [Allies] (page 7)
execute rotated ~ 0 positioned ^0.42 ^1.27 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_nav_allies_txt"],billboard:"center",text:{text:"Allies",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^0.42 ^1.23 ^2.3 run summon interaction ~ ~ ~ {Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_nav_allies"],width:0.22f,height:0.06f,response:1b}

# [Guild] — center, highlighted by default (page 1)
execute rotated ~ 0 positioned ^ ^1.27 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_nav_info_txt"],billboard:"center",text:{text:"Guild",color:"white",bold:true},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^ ^1.23 ^2.3 run summon interaction ~ ~ ~ {Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_nav_info"],width:0.22f,height:0.06f,response:1b}

# [Events] (page 6)
execute rotated ~ 0 positioned ^-0.42 ^1.27 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_nav_event_txt"],billboard:"center",text:{text:"Events",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^-0.42 ^1.23 ^2.3 run summon interaction ~ ~ ~ {Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_nav_event"],width:0.22f,height:0.06f,response:1b}

# [Manage] (page 4)
execute rotated ~ 0 positioned ^-0.85 ^1.27 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_nav_manage_txt"],billboard:"center",text:{text:"Manage",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.297f,0.297f,0.297f]}}
execute rotated ~ 0 positioned ^-0.85 ^1.23 ^2.3 run summon interaction ~ ~ ~ {Tags:["ec.guild_menu_el","Adv.SectionContent","Adv.MenuElement","ec.guild_nav_manage"],width:0.22f,height:0.06f,response:1b}

# No close button — codex back button handles navigation

# Load guild info page by default
function evercraft:guild/gui/menu/refresh_info
