# Lore Discovery: Remove sparkle entities with fadeout effect
# Run as sparkle marker, at sparkle position

# Fadeout particles
particle dust{color:[0.9,0.85,0.5],scale:0.4} ~ ~0.3 ~ 0.3 0.3 0.3 0 10
particle minecraft:enchant ~ ~0.5 ~ 0.2 0.2 0.2 0.5 8

# Kill interaction entity at this location
kill @e[type=interaction,tag=ec.lore_click,distance=..1]

# Kill self (the data marker)
kill @s
