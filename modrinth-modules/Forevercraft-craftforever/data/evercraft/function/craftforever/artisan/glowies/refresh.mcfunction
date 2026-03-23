# Crafter Glowies — Refresh (1s scheduled loop)
schedule function evercraft:craftforever/artisan/glowies/refresh 1s replace
execute as @a[tag=CF.GlowActive] run effect give @s minecraft:glowing 2 0 true
