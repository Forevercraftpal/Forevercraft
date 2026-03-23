# Crafter Glowies — Toggle on/off
# Only works for players at rank 50+

execute unless score @s ec.cf_rank matches 50.. run return run tellraw @s [{text:"Crafter Glowies require Artisan Rank 50.",color:"red"}]

# If active, disable
execute if entity @s[tag=CF.GlowActive] run tag @s remove CF.GlowActive
execute if entity @s[tag=!CF.GlowActive] run effect clear @s minecraft:glowing
execute if entity @s[tag=!CF.GlowActive] run return run tellraw @s [{text:"Artisan glow disabled.",color:"gray"}]

# Enable
tag @s add CF.GlowActive
function evercraft:craftforever/artisan/glowies/check
tellraw @s [{text:"Artisan glow enabled!",color:"gold"}]
