# Ore Node: Remove node entities with fadeout effect
# Run as node marker, at node position

# Fadeout particles
particle dust{color:[0.7,0.7,0.8],scale:0.4} ~ ~0.2 ~ 0.3 0.2 0.3 0 10
particle minecraft:enchant ~ ~0.3 ~ 0.2 0.2 0.2 0.5 8

# Kill visual block_display at this location
kill @e[type=block_display,tag=ec.prospect_visual,distance=..1]

# Kill interaction entity at this location
kill @e[type=interaction,tag=ec.prospect_click,distance=..1]

# Kill self (the data marker)
kill @s
