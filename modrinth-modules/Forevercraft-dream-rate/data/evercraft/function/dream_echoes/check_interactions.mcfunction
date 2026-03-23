# Dream Echoes — Check click/attack interactions
# OPT: Only called when interaction entities exist (gated by particles.mcfunction)

# Right-click
execute as @e[type=interaction,tag=ec.dream_echo_click] at @s if data entity @s interaction run function evercraft:dream_echoes/on_click

# Left-click/break
execute as @e[type=interaction,tag=ec.dream_echo_click] at @s if data entity @s attack run function evercraft:dream_echoes/on_attack
