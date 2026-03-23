# Summer Heat Scorch — Set player on fire with warning
# Run as the scorched player

# Set on fire for 3 seconds (60 ticks) — hurts but won't kill
data modify entity @s Fire set value 60s

# Record scorch day for 4-day cooldown
scoreboard players operation @s ec.last_scorch = #visual_day ec.var

# Dramatic notification
title @s subtitle {text:"Wear proper protection from the heat!",color:"gray",italic:true}
title @s title {text:"The sun's rays have scorched you!",color:"red"}
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 0.6 0.5
playsound minecraft:item.firecharge.use player @s ~ ~ ~ 0.8 0.8

# Fire burst particles
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 30 force @s
particle lava ~ ~1 ~ 0.3 0.3 0.3 0.01 5 force @s
