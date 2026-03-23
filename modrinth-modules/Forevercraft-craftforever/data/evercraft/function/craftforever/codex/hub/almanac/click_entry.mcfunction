# Almanac — Click handler for node entry rows
# Runs as interaction entity, outputs detail tellraw to nearest codex player

data remove entity @s interaction

# Determine which entry was clicked based on tag + current page
# Page 1: Frost(1), Sunite(2), Voidite(3), Livingstone(4), Tideforged(5)
# Page 2: Blazite(1), Warpstone(2), Endric(3), Sporite(4), Verdant(5)
# Page 3: Skymetal(1), Sunbaked(2), Shadowroot(3), Bogite(4), Blossom(5)

# Get the page from nearest codex player
execute store result score #cf_click_pg ec.temp run scoreboard players get @p[tag=CF.InCodex,distance=..5] ec.cf_alm_pg
# Get their bitfield
execute store result score #cf_click_bits ec.temp run scoreboard players get @p[tag=CF.InCodex,distance=..5] ec.cf_nodes_found

# === PAGE 1 ENTRIES ===

# Entry 1, Page 1: Frostcrystal Vein (bit 0 = mask 1)
execute if score #cf_click_pg ec.temp matches 1 if entity @s[tag=CF.AlmRow1] run function evercraft:craftforever/codex/hub/almanac/detail/frostcrystal

# Entry 2, Page 1: Sunite Deposit (bit 1 = mask 2)
execute if score #cf_click_pg ec.temp matches 1 if entity @s[tag=CF.AlmRow2] run function evercraft:craftforever/codex/hub/almanac/detail/sunite

# Entry 3, Page 1: Voidite Cluster (bit 2 = mask 4)
execute if score #cf_click_pg ec.temp matches 1 if entity @s[tag=CF.AlmRow3] run function evercraft:craftforever/codex/hub/almanac/detail/voidite

# Entry 4, Page 1: Livingstone Node (bit 3 = mask 8)
execute if score #cf_click_pg ec.temp matches 1 if entity @s[tag=CF.AlmRow4] run function evercraft:craftforever/codex/hub/almanac/detail/livingstone

# Entry 5, Page 1: Tideforged Coral (bit 4 = mask 16)
execute if score #cf_click_pg ec.temp matches 1 if entity @s[tag=CF.AlmRow5] run function evercraft:craftforever/codex/hub/almanac/detail/tideforged

# === PAGE 2 ENTRIES ===

execute if score #cf_click_pg ec.temp matches 2 if entity @s[tag=CF.AlmRow1] run function evercraft:craftforever/codex/hub/almanac/detail/blazite
execute if score #cf_click_pg ec.temp matches 2 if entity @s[tag=CF.AlmRow2] run function evercraft:craftforever/codex/hub/almanac/detail/warpstone
execute if score #cf_click_pg ec.temp matches 2 if entity @s[tag=CF.AlmRow3] run function evercraft:craftforever/codex/hub/almanac/detail/endric
execute if score #cf_click_pg ec.temp matches 2 if entity @s[tag=CF.AlmRow4] run function evercraft:craftforever/codex/hub/almanac/detail/sporite
execute if score #cf_click_pg ec.temp matches 2 if entity @s[tag=CF.AlmRow5] run function evercraft:craftforever/codex/hub/almanac/detail/verdant

# === PAGE 3 ENTRIES ===

execute if score #cf_click_pg ec.temp matches 3 if entity @s[tag=CF.AlmRow1] run function evercraft:craftforever/codex/hub/almanac/detail/skymetal
execute if score #cf_click_pg ec.temp matches 3 if entity @s[tag=CF.AlmRow2] run function evercraft:craftforever/codex/hub/almanac/detail/sunbaked
execute if score #cf_click_pg ec.temp matches 3 if entity @s[tag=CF.AlmRow3] run function evercraft:craftforever/codex/hub/almanac/detail/shadowroot
execute if score #cf_click_pg ec.temp matches 3 if entity @s[tag=CF.AlmRow4] run function evercraft:craftforever/codex/hub/almanac/detail/bogite
execute if score #cf_click_pg ec.temp matches 3 if entity @s[tag=CF.AlmRow5] run function evercraft:craftforever/codex/hub/almanac/detail/blossom

# Sound + cooldown
playsound minecraft:ui.button.click master @p[tag=CF.InCodex,distance=..5] ~ ~ ~ 0.5 1.2
execute as @p[tag=CF.InCodex,distance=..5] run scoreboard players set @s ec.cf_codex_cd 3
