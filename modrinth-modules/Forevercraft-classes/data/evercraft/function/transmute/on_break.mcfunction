# Transmutation Stand — Broken (lodestone removed)
# Run as: the marker entity, at its position
# Clean up marker + interaction entity + display overlay

# Close any open menus for nearby players
execute as @a[tag=TX.InMenu,distance=..10] at @s run function evercraft:transmute/gui/close

# Kill the interaction entity
kill @e[type=interaction,tag=TX.Interact,distance=..2]

# Kill display overlay (armor_stand + item_display passenger)
kill @e[type=armor_stand,tag=TX.Stand,distance=..2]
kill @e[type=item_display,tag=TX.Display,distance=..2]

# Kill this marker
kill @s
