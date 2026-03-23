# Infinite Castle — Select Start from Floor 1
# Run as: interaction entity. Player has IC.InMenu tag.

# Set starting floor and key cost
scoreboard players set #ic_start_floor ec.var 1
scoreboard players set #ic_key_cost ec.var 3

# Close menu and begin (as the player)
execute as @a[tag=IC.InMenu,limit=1] at @s run function evercraft:castle/menu/close
execute as @a[tag=ic.starter,limit=1] at @s run function evercraft:castle/begin
