# Bestiary GUI — Nav Inner (Macro)
# Args: {dir:1} or {dir:-1}
# Run as the player

# Change page (use operation because 'add' rejects negative values)
$scoreboard players set #nav_dir bs.temp $(dir)
scoreboard players operation @s adv.gui_page += #nav_dir bs.temp

# Wrap around: 0 -> 6, 7 -> 1
execute if score @s adv.gui_page matches ..0 run scoreboard players set @s adv.gui_page 6
execute if score @s adv.gui_page matches 7.. run scoreboard players set @s adv.gui_page 1

# Kill old page content (keep nav arrows and page label)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Bs.PageContent,distance=..5]

# Update page label
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run function evercraft:bestiary/gui/update_page_label

# Spawn new page content
execute if score @s adv.gui_page matches 1 at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..15,limit=1,sort=nearest] feet run function evercraft:bestiary/gui/spawn_challenges_page
execute if score @s adv.gui_page matches 2..6 at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..15,limit=1,sort=nearest] feet run function evercraft:bestiary/gui/spawn_bestiary_page

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
