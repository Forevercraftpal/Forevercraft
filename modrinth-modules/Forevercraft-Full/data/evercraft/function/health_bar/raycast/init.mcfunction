# RPG Health Bar — Raycast Init
# Starts from player's eyes, positioned ^ ^ ^0.5 (half block forward)
# Context: as @a[hb.enabled=1..] at @s anchored eyes positioned ^ ^ ^0.5

# Reset ray counter
scoreboard players set @s hb.ray 0
tag @s remove hb.found

# Start stepping
function evercraft:health_bar/raycast/step
