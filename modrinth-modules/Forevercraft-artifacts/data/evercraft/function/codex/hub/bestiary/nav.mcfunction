# Bestiary Section — Navigation (Macro)
# Args: {dir:1} or {dir:-1}
# Wraps pages 2-6 only (no challenges page)

# Clear interaction data
data remove entity @s interaction

# Change page (on the PLAYER, not the nav arrow entity)
$scoreboard players set #nav_dir bs.temp $(dir)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @a[tag=Adv.InMenu] if score @s adv.gui_session = #gui_stamp ec.temp run scoreboard players operation @s adv.gui_page += #nav_dir bs.temp

# Wrap around: 1 -> 6, 7 -> 2 (bestiary pages only)
execute as @a[tag=Adv.InMenu] if score @s adv.gui_session = #gui_stamp ec.temp if score @s adv.gui_page matches ..1 run scoreboard players set @s adv.gui_page 6
execute as @a[tag=Adv.InMenu] if score @s adv.gui_session = #gui_stamp ec.temp if score @s adv.gui_page matches 7.. run scoreboard players set @s adv.gui_page 2
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Bs.PageContent,distance=..5]

# Update page label (standalone label)
execute as @e[tag=Bs.StPageLabel,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp run function evercraft:codex/hub/bestiary/update_page_label

# Spawn new bestiary page content (must run from PLAYER position, not nav arrow)
# Find the owning player by session match, position at them, face the anchor
execute as @a[tag=Adv.InMenu] if score @s adv.gui_session = #gui_stamp ec.temp at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:bestiary/gui/spawn_bestiary_page

# Refresh kill counts and colors for the new page
execute as @a[tag=Adv.InMenu] if score @s adv.gui_session = #gui_stamp ec.temp if score @s adv.gui_page matches 2 run function evercraft:bestiary/gui/refresh_page2
execute as @a[tag=Adv.InMenu] if score @s adv.gui_session = #gui_stamp ec.temp if score @s adv.gui_page matches 3 run function evercraft:bestiary/gui/refresh_page3
execute as @a[tag=Adv.InMenu] if score @s adv.gui_session = #gui_stamp ec.temp if score @s adv.gui_page matches 4 run function evercraft:bestiary/gui/refresh_page4
execute as @a[tag=Adv.InMenu] if score @s adv.gui_session = #gui_stamp ec.temp if score @s adv.gui_page matches 5 run function evercraft:bestiary/gui/refresh_page5
execute as @a[tag=Adv.InMenu] if score @s adv.gui_session = #gui_stamp ec.temp if score @s adv.gui_page matches 6 run function evercraft:bestiary/gui/refresh_page6

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
