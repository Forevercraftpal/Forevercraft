# Foraging Bush: Remove bush entities with fadeout effect
# Run as bush marker, at bush position

# Fadeout particles
particle dust{color:[0.4,0.8,0.3],scale:0.4} ~ ~0.3 ~ 0.3 0.3 0.3 0 10
particle minecraft:enchant ~ ~0.5 ~ 0.2 0.2 0.2 0.5 8

# Kill visual item_display at this location
kill @e[type=item_display,tag=ec.forage_visual,distance=..1]

# Kill interaction entity at this location
kill @e[type=interaction,tag=ec.forage_click,distance=..1]

# Kill self (the data marker)
kill @s
