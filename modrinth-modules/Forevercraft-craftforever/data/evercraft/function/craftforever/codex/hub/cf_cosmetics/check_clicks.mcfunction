# CF Cosmetics — Check Clicks
# Run as player

execute as @e[type=interaction,tag=CF.CosClick0,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_cosmetics/click_tiers
execute as @e[type=interaction,tag=CF.CosClick1,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_cosmetics/click_particles
execute as @e[type=interaction,tag=CF.CosClick2,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/cf_cosmetics/click_titles
