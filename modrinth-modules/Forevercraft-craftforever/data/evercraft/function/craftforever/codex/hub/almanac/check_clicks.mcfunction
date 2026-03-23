# Craftforever Codex — Almanac click handler
# Run as player

# Detect prev arrow click
execute as @e[type=interaction,tag=CF.AlmPrevClick,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/almanac/nav_prev

# Detect next arrow click
execute as @e[type=interaction,tag=CF.AlmNextClick,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/almanac/nav_next

# Detect row clicks (5 entry rows per page)
execute as @e[type=interaction,tag=CF.AlmRow1,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/almanac/click_entry
execute as @e[type=interaction,tag=CF.AlmRow2,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/almanac/click_entry
execute as @e[type=interaction,tag=CF.AlmRow3,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/almanac/click_entry
execute as @e[type=interaction,tag=CF.AlmRow4,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/almanac/click_entry
execute as @e[type=interaction,tag=CF.AlmRow5,distance=..5] if data entity @s interaction run function evercraft:craftforever/codex/hub/almanac/click_entry
