# Glyphforge — On Break (lodestone removed)
# Close any open menus and clean up entities

# Close menu for nearby players
execute as @a[distance=..8,tag=RF.InMenu] run function evercraft:glyphforge/gui/close

# Kill interaction entity
execute as @e[type=interaction,tag=RF.Interact,distance=..2] run kill @s

# Kill display overlay (armor_stand + item_display passenger)
execute as @e[type=armor_stand,tag=RF.Stand,distance=..2] run kill @s
execute as @e[type=item_display,tag=RF.Display,distance=..2] run kill @s

# Kill this marker
kill @s
