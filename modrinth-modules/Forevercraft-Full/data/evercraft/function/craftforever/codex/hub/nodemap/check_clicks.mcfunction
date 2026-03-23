# Node Map — Click detection for dimension headers
# Run as player

# Overworld header click
execute as @e[type=interaction,tag=CF.MapOWClick,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/nodemap/click_overworld

# Nether header click
execute as @e[type=interaction,tag=CF.MapNetherClick,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/nodemap/click_nether

# End header click
execute as @e[type=interaction,tag=CF.MapEndClick,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/nodemap/click_end
