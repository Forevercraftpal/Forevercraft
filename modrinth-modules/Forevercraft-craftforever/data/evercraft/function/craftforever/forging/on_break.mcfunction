# Artisan Forge — On Break (lodestone removed)
# Runs as the marker entity at the forge position

# Close any player's open menu nearby
execute as @a[tag=CF.InMenu,distance=..8] run function evercraft:craftforever/forging/gui/close

# Kill all forge entities (interaction + armor_stand w/ item_display passenger)
execute as @e[type=interaction,tag=CF.Interact,distance=..2] run kill @s
execute as @e[type=armor_stand,tag=CF.Visual,distance=..2] run kill @s
execute as @e[type=item_display,tag=CF.Visual,distance=..2] run kill @s

# Kill self (marker)
kill @s
