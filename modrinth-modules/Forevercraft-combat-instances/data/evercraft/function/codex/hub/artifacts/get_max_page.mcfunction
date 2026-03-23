# Artifact Collection — Get Max Item Pages
# Sets adv.temp to the number of item list pages for current tier/category
# Most categories = 1 page. Multi-page exceptions listed below.
# Run as the player

scoreboard players set @s adv.temp 1

# Ornate Armor (60 items) = 3 pages
execute if score @s adv.gui_art_tier matches 4 if score @s adv.gui_art_cat matches 2 run scoreboard players set @s adv.temp 3
# Exquisite Weapons (33 items) = 2 pages
execute if score @s adv.gui_art_tier matches 5 if score @s adv.gui_art_cat matches 1 run scoreboard players set @s adv.temp 2
# Mythical Weapons (32 items) = 2 pages
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 1 run scoreboard players set @s adv.temp 2
# Mythical Armor (34 items) = 2 pages
execute if score @s adv.gui_art_tier matches 6 if score @s adv.gui_art_cat matches 2 run scoreboard players set @s adv.temp 2
