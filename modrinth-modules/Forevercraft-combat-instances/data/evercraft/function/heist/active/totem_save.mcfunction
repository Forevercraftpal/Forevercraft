# Black Market Heist — Totem Life Save (prevents actual death)
# Runs as the heist player when health drops critically

# Immediate survival
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:resistance 3 4 true

# Totem animation
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.5 100
playsound minecraft:item.totem.use master @s ~ ~ ~ 1 1

# Route to fail handler
function evercraft:heist/active/on_fail
